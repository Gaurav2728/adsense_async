module AdsenseAsync
  module Rails    
    module ActionView
      module Base
        extend ActiveSupport::Concern

        def adsense_async_tag(options)
          new_hash = {}
          new_hash[:class] = options[:class]
          new_hash[:style] = options[:style]
          if ::Rails.env.production?
            options.except(:class, :style).map do |key, value|
              new_hash["data-ad-#{key}".to_sym] = value
            end
            content_top + content_tag(:ins, nil, new_hash) + content_buttom
          else
            src = "https://dummyimage.com/120x80/000/fff&text=#{options[:slot]}"
            content_top + content_tag(:img, nil, src: src, alt: (options[:client]).to_s) + content_buttom
          end
        end

        private

        def content_top
          src = "#{request.protocol}pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"
          content_tag(:script, nil, async: true, src: src)
        end

        def content_buttom
          content_tag(:script, '(adsbygoogle = window.adsbygoogle || []).push({});')
        end
      end
    end
  end
end
