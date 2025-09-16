source "https://rubygems.org"

ruby "3.2.2"

gem "rails", "~> 7.1.4"
gem "puma", "~> 6.1"
gem "pg", "~> 1.4"
gem "sqlite3", "~> 1.5", group: [:development, :test]

gem "bootsnap", ">= 1.16", require: false

gem "rack-attack"
gem "rack-cors"
gem "redis", "~> 5.0"
gem "sidekiq"
gem "jwt"
gem "faraday"
gem "oj"

gem "dotenv-rails", groups: [:development, :test]

gem "httparty"

group :development, :test do
  gem "rspec-rails", "~> 6.0"
  gem "factory_bot_rails"
  gem "faker"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry"
end

group :development do
  gem "listen", "~> 3.7"
  gem "rubocop", require: false
end
