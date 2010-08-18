require 'rails/generators/mongomatic_generator'
module Mongomatic
  module Generators
    class ConfigGenerator < ::Rails::Generators::Base
      desc "Create mongomatic configuration file (config/mongomatic.yml)"
      
      argument :db, :type => :string, :optional => true
      
      def self.source_root
        @_source_root ||= File.expand_path("../templates", __FILE__)
      end
      
      def default
        'test'
      end
      
      def create_config_file
        template 'mongomatic.yml', Rails.root.join('config', 'mongomatic.yml')
      end
    end
  end
end