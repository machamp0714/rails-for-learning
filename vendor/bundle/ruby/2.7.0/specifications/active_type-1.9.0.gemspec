# -*- encoding: utf-8 -*-
# stub: active_type 1.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "active_type".freeze
  s.version = "1.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tobias Kraze".freeze, "Henning Koch".freeze]
  s.date = "2021-05-20"
  s.description = "Make any Ruby object quack like ActiveRecord".freeze
  s.email = "tobias.kraze@makandra.de".freeze
  s.homepage = "https://github.com/makandra/active_type".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Make any Ruby object quack like ActiveRecord".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.2"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.5"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 3.2"])
  end
end
