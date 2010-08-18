module Rails
  module Mongomatic
    module Support
      def self.included(base)
        base.extend ClassMethods
      end
      
      def new_record?
        new?
      end
      
      def persisted?
        !(new? || removed?)
      end
      
      def to_key
        (new_record?) ? nil : [to_param]
      end
      
      def to_param
        self['_id'].to_s
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