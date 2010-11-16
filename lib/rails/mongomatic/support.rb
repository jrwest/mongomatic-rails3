module Rails
  module Mongomatic
    module Support
      def self.included(base)
        base.extend ClassMethods
        ::Mongomatic::Errors.send(:include, Errors)
      end
      
      def merge!(hash)
        return true unless hash
        merge(hash)
        update
      end
      
      def upsert
        if new?
          insert
        else
          update
        end
      end
      
      def upsert!
        if new?
          insert!
        else
          update!
        end
      end
      
      module ClassMethods
        def model_name
          @_model_name ||= ActiveModel::Name.new(self)
        end
      end
      
      module Errors
        def any?
          !empty?
        end
        
        def count
          @errors.values.inject(0) { |sum, errors| sum += errors.size }
        end
      end
    end
  end
end