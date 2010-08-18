require "rails/generators/named_base"
require "rails/generators/active_model"

module Mongomatic
  module Generators
    class Base < ::Rails::Generators::NamedBase
      def self.source_root
        @_source_root ||= File.expand_path("../#{base_name}/#{generator_name}/templates", __FILE__)
      end
    end
    
    class ActiveModel < ::Rails::Generators::ActiveModel
      def self.all(klass)
        "#{klass}.find"
      end
      
      def self.find(klass, params=nil)
        (params.blank?) ? "#{klass}.find" : "#{klass}.find_one(BSON::ObjectID(#{params}))"
      end
      
      def self.build(klass, params=nil)
        "#{klass}.new(#{params})"
      end
      
      def save
        "#{name}.upsert"
      end
      
      def update_attributes(params=nil)
        "#{name}.merge!(#{params})"
      end
      
      def errors
        "#{name}.errors"
      end
      
      def destroy
        "#{name}.remove"
      end
    end
  end
end