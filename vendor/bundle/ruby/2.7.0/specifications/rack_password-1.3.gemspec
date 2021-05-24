# -*- encoding: utf-8 -*-
# stub: rack_password 1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rack_password".freeze
  s.version = "1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Marcin Stecki".freeze]
  s.date = "2016-04-08"
  s.description = "Small rack middleware to block your site from unwanted vistors. A little bit more convenient than basic auth - browser will ask you once for the password and then set a cookie to remember you - unlike the http basic auth it wont prompt you all the time.".freeze
  s.email = ["marcin@netguru.pl".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Small rack middleware to block your site from unwanted vistors.".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
  end
end
