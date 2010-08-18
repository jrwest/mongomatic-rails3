require 'rails/generators/mongomatic_generator'

module Mongomatic
  module Generators
    class ModelGenerator < Base
      desc "Creates a mongomatic model"
      class_option :connection, 
                   :type => :string, 
                   :default => "", 
                   :desc => "Connection String",
                   :banner => "Mongo::Connection.new.db('test')",
                   :aliases => ['-c']
                   
      class_option :expectations, 
                   :desc => "Include Mongomatic::Expectations",
                   :default => false, 
                   :aliases => ['-e'], 
                   :type => :boolean
                   
      check_class_collision
      
      def connection
        options[:connection]
      end
      
      def expectations?
        options[:expectations] == true
      end
      
      def create_model_file
        template "model.rb", File.join("app/models", class_path, "#{file_name}.rb")
      end
      
      hook_for :test_framework
    end
  end
end