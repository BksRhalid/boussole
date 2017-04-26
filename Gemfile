# encoding: utf-8
# frozen_string_literal: true

source 'https://rubygems.org'
ruby '2.4.1'

gem 'pg'
gem 'rails', '~> 4.2'

gem 'active_type'
gem 'coffee-rails'
gem 'flip'
gem 'friendly_id'
gem 'haml-rails'
gem 'jquery-rails'
gem 'maildown'
gem 'puma'
gem 'rails-i18n'
gem 'sass-rails'
gem 'sentry-raven'
gem 'simple_form'
gem 'trailblazer', '1.1.2'
gem 'trailblazer-rails', '< 0.4'
gem 'uglifier'
gem 'wicked'

# Authorisation
gem 'pundit'

# Avoid blanks in the db
gem 'nilify_blanks'

# Analytics
gem 'browser'
gem 'meta_events'
gem 'mixpanel-ruby'

# Style guide
gem 'nkss-rails', git: 'https://github.com/nadarei/nkss-rails'

group :production do
  gem 'heroku_rails_deflate'
  gem 'lograge'
  gem 'rails_12factor'
end

group :development, :test do
  gem 'awesome_print'
  gem 'byebug'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-stack_explorer'
  gem 'rspec-rails'
  gem 'spring'
end

group :development do
  gem 'better_errors'
  gem 'foreman'
  gem 'github_changelog_generator', require: false
  gem 'guard-bower', require: false
  gem 'guard-bundler', require: false
  gem 'guard-foreman', require: false
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  gem 'i18n-tasks', require: false
  gem 'letter_opener_web'
  gem 'quiet_assets'
  gem 'rails-erd'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'spring-commands-rspec'
  gem 'web-console'

  # Linters
  gem 'haml-lint', require: false
  gem 'inch', require: false
  gem 'rubocop', '0.45', require: false
  gem 'rubocop-rspec', '1.5', require: false
  gem 'scss_lint', require: false
  gem 'yaml-lint', require: false
end

group :test do
  gem 'capybara'
  gem 'capybara-email'
  gem 'codeclimate-test-reporter', '< 1.0'
  gem 'database_cleaner'
  gem 'poltergeist'
  gem 'rspec_junit_formatter'
  gem 'shoulda-matchers', '~> 3.1'
end

group :doc do
  gem 'yard'
  gem 'yard-activerecord'
end
