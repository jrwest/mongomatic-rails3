module Rails
  module Mongomatic
    module Support
      def self.included(base)
        base.extend ClassMethods
      end
      
      def merge!(hash)
        return true unless hash
        merge(hash)
        update
      end
      
      module ClassMethods
        def model_name
          @_model_name ||= ActiveModel::Name.new(self)
        end
      end
    end
  end
end