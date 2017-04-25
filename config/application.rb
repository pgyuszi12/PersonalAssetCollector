require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PersonalAssetCollector
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.assets.paths << Rails.root.join("vendor","assets","app", "bower_components")
    config.assets.paths << Rails.root.join("vendor","assets","app", "bower_components", "angular")
    config.assets.paths << Rails.root.join("vendor","assets","app", "bower_components","bootstrap-sass-official")
    config.assets.paths << Rails.root.join("vendor","assets","app", "bower_components","bootstrap-sass-official", "assets")
    config.assets.paths << Rails.root.join("vendor","assets","app", "bower_components","bootstrap-sass-official","assets","fonts")
    config.assets.paths << Rails.root.join("vendor","assets","app", "bower_components","bootstrap-sass-official","assets","stylesheets")
    config.assets.paths << Rails.root.join("vendor","assets","app", "bower_components","bootstrap-sass-official","assets","javascripts")
    config.assets.precompile << %r(.*.(?:eot|svg|ttf|woff|woff2)$)
    config.public_file_server.enabled = true
    config.assets.serve_static_files = true
  end
end
