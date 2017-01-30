# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adsense_async/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "adsense_async"
  spec.version       = AdsenseAsync::Rails::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Gaurav Sharma"]
  spec.email         = ["gaurav2728@gmail.com"]

  spec.summary       = "Provide a helper for google async ads api in rails."
  spec.description   = "Google provides async and sync api (javascript) to show ads, adsense_async gem support google adsense async api."
  spec.homepage      = "https://github.com/gaurav2728/adsense_async"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['issue_tracker'] = "http://gauravatrai.com"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.post_install_message = "adsense_async gem currently in beta version. Thanks for installing!"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
