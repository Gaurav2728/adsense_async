module AdsenseAsync
  module Rails
    class Railtie < ::Rails::Railtie

      initializer 'adsense_aync.action_view' do
        ActiveSupport.on_load :action_view do
          ::ActionView::Base.include(
            AdsenseAsync::Rails::ActionView::Base
          )
        end
      end

    end
  end
end
