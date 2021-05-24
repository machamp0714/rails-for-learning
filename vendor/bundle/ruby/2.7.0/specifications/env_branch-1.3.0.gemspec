# -*- encoding: utf-8 -*-
# stub: env_branch 1.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "env_branch".freeze
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["sanemat".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-07-15"
  s.description = "Get BRANCH_NAME from environment variables.".freeze
  s.email = ["o.gata.ken@gmail.com".freeze]
  s.homepage = "https://github.com/packsaddle/ruby-env_branch".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Get BRANCH_NAME from environment variables.".freeze

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
