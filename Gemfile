# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.5'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'annotate'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'checkstyle_filter-git'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'faker-japanese'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pundit-matchers'
  gem 'reek'
  gem 'rspec-rails'
  gem 'rspec-request_describer'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'saddler'
  gem 'saddler-reporter-github', github: 'ruffnote/ruby-saddler-reporter-github', branch: 'empty-checkstyle'
  gem 'saddler-reporter-text'
  gem 'shoulda-matchers'
  gem 'spring-commands-rspec'
  gem 'spring-commands-rubocop'
  gem 'vcr', require: false
  gem 'webmock'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'named_let'
  gem 'rspec_junit_formatter'
  gem 'simplecov', require: false
end

group :production, :staging do
  gem 'activerecord-nulldb-adapter'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: %[:mingw, :mswin, :x64_mingw, :jruby]

gem 'aasm'
gem 'active_type'
gem 'after_commit_everywhere'
gem 'airbrake'
gem 'any_login'
gem 'config'
gem 'counter_culture'
gem 'date_validator'
gem 'devise'
gem 'devise-i18n'
gem 'discard'
gem 'draper'
gem 'enumerize'
gem 'hashid-rails'
gem 'jp_prefecture'
gem 'kaminari'
gem 'letter_opener_web', '~> 1.0'
gem 'naught'
gem 'pundit'
gem 'rack-cors'
gem 'rack-dev-mark'
gem 'rack_password'
gem 'rails_admin'
gem 'rails_admin-i18n'
gem 'rails-i18n'
gem 'redis', '~> 4.0'
gem 'redis-session-store'
gem 'seed-fu'
gem 'slim-rails'
gem 'stripe'
gem 'stripe_event'
