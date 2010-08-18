# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongomatic-rails3}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jordan West"]
  s.date = %q{2010-08-17}
  s.description = %q{Mongomatic is a simple Ruby object mapper for Mongo}
  s.email = %q{jordanrw@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    "lib/rails/generators/mongomatic/config/config_generator.rb",
     "lib/rails/generators/mongomatic/model/model_generator.rb",
     "lib/rails/generators/mongomatic/model/templates/model.rb",
     "lib/rails/generators/mongomatic_generator.rb",
     "lib/rails/mongomatic.rb",
     "lib/rails/mongomatic/railtie.rb",
     "lib/rails/mongomatic/support.rb"
  ]
  s.homepage = %q{http://mongomatic.com/}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Mongomatic support for rails 3}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongomatic>, [">= 0.3.1"])
    else
      s.add_dependency(%q<mongomatic>, [">= 0.3.1"])
    end
  else
    s.add_dependency(%q<mongomatic>, [">= 0.3.1"])
  end
end

