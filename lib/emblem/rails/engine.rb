require 'emblem/rails/template'

module Emblem
  module Rails
    class Engine < ::Rails::Engine
      initializer "ember_rails.setup", :after => :append_assets_path, :group => :all do |app|
        app.config.assets.configure do |env|
          env.register_engine '.emblem', Emblem::Rails::Template, mime_type: 'text/plain'
        end
      end
    end
  end
end
