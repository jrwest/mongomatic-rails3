require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "mongomatic-rails3"
    gem.summary = %Q{Mongomatic support for rails 3}
    gem.description = %Q{Mongomatic is a simple Ruby object mapper for Mongo}
    gem.email = "jordanrw@gmail.com"
    gem.homepage = "http://mongomatic.com/"
    gem.authors = ["Jordan West"]
    gem.files = ["lib/**/*.rb", "lib/**/*.yml"]
    gem.add_dependency "mongomatic", ">= 0.3.1"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end