require 'rails'
require 'rails/mongomatic'

module Rails
  module Monogmatic
    class Railtie < Rails::Railtie
      config.generators.orm :mongomatic, :migrations => false
      
      initializer "setup" do
        config_file = Rails.root.join("config", "mongomatic.yml")
        if config_file.file?
          connection_str = YAML.load(ERB.new(config_file.read).result)[Rails.env]
          ::Mongomatic.db = eval(connection_str)
        end
      end
    end
  end
end