source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.1"

gem "activesupport"
gem "awesome_print", require: "ap"
gem "oj"
gem "pry-bond"
gem "puma", "~> 5.0"
gem "rails", "~> 6.1.4"
gem "sass-rails", ">= 6"
gem "sqlite3", "~> 1.4"
gem "zeitwerk"

# bug in graphiti dependency
# https://github.com/graphiti-api/vandal_ui/pull/13
# gem "vandal_ui", github: "nextekcarl/vandal_ui", branch: "patch-1"
gem "vandal_ui"

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  gem "bond"
  gem "pry-byebug"
  gem "byebug", platform: %i[mri mingw x64_mingw]
  gem "colorize", require: false
  gem 'factory_bot_rails', '~> 5.0'
  gem 'faker', '~> 2.5'
  gem "fasterer", require: false
  gem "flay", require: false
  gem 'graphiti_spec_helpers'
  gem "interactive_editor"
  gem "overcommit", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rails", require: false
  gem "rspec"
  gem 'rspec-rails', '~> 4.0.0beta2'
end

group :development do
  gem "listen", "~> 3.3"

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  gem "database_cleaner", "~> 1.7"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
