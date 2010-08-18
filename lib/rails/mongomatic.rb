require 'mongomatic'
require 'rails/mongomatic/railtie'
require 'rails/mongomatic/support'

module Mongomatic
  class Base
    include Rails::Mongomatic::Support
  end
end