source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "activesupport"
gem "awesome_print", require: "ap"
gem "oj"
gem "pry-bond"
gem "pry-byebug"
gem "zeitwerk"
gem "rails", "~> 6.1.4"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "sass-rails", ">= 6"

group :development, :test do
  gem "bond"
  gem "byebug", platform: %i[mri mingw x64_mingw]
  gem "colorize", require: false
  gem "fasterer", require: false
  gem "flay", require: false
  gem "interactive_editor"
  gem "overcommit", require: false
  gem "rspec"

  gem "rubocop-performance", require: false
  gem "rubocop-rspec", require: false
  gem "rubocop-rails", require: false
end

group :development do
  gem "listen", "~> 3.3"
end

group :test do
  gem "rspec-rails"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
