# -*- encoding: utf-8 -*-
# stub: natural_number_string 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "natural_number_string".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["sanemat".freeze]
  s.bindir = "exe".freeze
  s.date = "2015-09-27"
  s.description = "Check the value is string of natural number.".freeze
  s.email = ["o.gata.ken@gmail.com".freeze]
  s.homepage = "https://github.com/packsaddle/ruby-natural_number_string".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Check the value is string of natural number.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
  end
end
