run "touch Gemfile"

add_source "https://rubygems.org/"

gem 'rails', '~> 5.1.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'dotenv-rails'
gem 'foreman'

#webpacker and support for react embded into rails
gem 'react_on_rails', '~> 9.0.1'
gem "webpacker", "~> 3.0"

gem_group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem_group :test do
  gem "capybara-screenshot"
  gem "chromedriver-helper"
  gem "coveralls", require: false
  gem "database_cleaner"
  gem "generator_spec"
  gem "rspec-retry"
  gem "selenium-webdriver", "<3.0.0"
end

gem_group :development, :test do
  gem 'dotenv-rails' 

  gem 'faker'
  gem 'phantomjs', :require => 'phantomjs/poltergeist'
  gem 'poltergeist'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'launchy', require: false
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.5'
  gem 'shoulda'
  gem 'valid_attribute'
  gem 'database_cleaner'
end

gem_group :production do
  gem 'rails_12factor'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'mini_racer', platforms: :ruby

run "bundle install"

generate "rspec:install"

# add spec dependencies to rails_helper.rb
rails_helper = <<-RAILS_HELPER
require "capybara/rails"
require "valid_attribute"

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods
end
RAILS_HELPER
run "echo '#{rails_helper}' >> spec/rails_helper.rb"

# add spec dependencies to rails_helper.rb
spec_helper = <<-SPEC_HELPER
require "coveralls"
Coveralls.wear!('rails')
SPEC_HELPER
run "echo '#{spec_helper}' >> spec/spec_helper.rb"

run "touch .env"

gitignore = <<-GITIGNORE
/coverage
.env
/public/packs
/public/packs-test
/node_modules
GITIGNORE
run "echo '#{gitignore}' >> .gitignore"

dot_env = <<-ENV
COVERALL_REPO_TOKEN=
ENV
run "echo '#{dot_env}' >> .env"

run "touch .coveralls.yml"

coverall = <<-COVERALLS
repo_token: ENV["COVERALLS_REPO_TOKEN"]
COVERALLS
run "echo '#{coverall}' >> .coveralls.yml"

readme = <<-README
![Build Status](https://codeship.com/projects/<YOUR_PROJECT_UUID>/status?branch=master)
![Code Climate](https://codeclimate.com/github/Jose-N/<YOUR_REPO_NAME>.png)
![Coverage Status](https://coveralls.io/repos/Jose-N/<YOUR_REPO_NAME>/badge.png)
README
run "echo '#{readme}' >> README.md"

rake "db:create"

git :init
git add: "."
git commit: "-a -m initial"

generate "react_on_rails:install"

git add: "."
git commit: "-a -m added react on rails"
