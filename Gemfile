# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'administrate'
gem 'airrecord'
gem 'customerio'
gem 'httparty'
gem 'jbuilder', '~> 2.7'
gem 'jsonb_accessor', '~> 1.0.0'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.1'
gem 'sass-rails', '>= 6'
gem 'tty-prompt'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

gem 'bootsnap', '>= 1.4.4', require: false

# AI
gem 'classifier-reborn'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'clipboard'
  gem 'dotenv-rails'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'prettyprint'
end

group :development do
  gem 'awesome_print'
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

group :test do
  gem 'capybara', '>= 3.26'
end
