# -*- encoding: utf-8 -*-
# stub: checkstyle_filter-git 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "checkstyle_filter-git".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["sanemat".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-04-13"
  s.description = "Filter errors(checkstyle) by git diff.".freeze
  s.email = ["o.gata.ken@gmail.com".freeze]
  s.executables = ["checkstyle_filter-git".freeze]
  s.files = ["exe/checkstyle_filter-git".freeze]
  s.homepage = "https://github.com/packsaddle/ruby-checkstyle_filter-git".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Filter checkstyle format errors on ONLY modified lines.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<git_diff_parser>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rexml>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_development_dependency(%q<nori>.freeze, [">= 0"])
  else
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<git_diff_parser>.freeze, [">= 0"])
    s.add_dependency(%q<rexml>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    s.add_dependency(%q<nori>.freeze, [">= 0"])
  end
end
