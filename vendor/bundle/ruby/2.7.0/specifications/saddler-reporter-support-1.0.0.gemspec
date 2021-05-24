# -*- encoding: utf-8 -*-
# stub: saddler-reporter-support 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "saddler-reporter-support".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["sanemat".freeze]
  s.bindir = "exe".freeze
  s.date = "2016-05-01"
  s.description = "Interface for saddler-reporter. And utilities for saddler-reporter.".freeze
  s.email = ["o.gata.ken@gmail.com".freeze]
  s.homepage = "https://github.com/packsaddle/ruby-saddler-reporter-support".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Interface for saddler-reporter. And utilities for saddler-reporter.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<nori>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
  else
    s.add_dependency(%q<nori>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
  end
end
