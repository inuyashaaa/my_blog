source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "bcrypt", "3.1.11"
gem "bootstrap-sass", "3.3.7"
gem "bootstrap-will_paginate", "1.0.0"
gem "coffee-rails", "4.2.2"
gem "config"
gem "jbuilder", "2.6.1"
gem "jquery-rails", "4.3.1"
gem "puma", "3.9.1"
gem "rails", "5.0.3"
gem "sass-rails", "5.0.6"
gem "toastr-rails"
gem "turbolinks", "5.0.1"
gem "uglifier", "3.2.0"

group :development, :test do
  gem "sqlite3", "1.3.13"
  gem "byebug", "9.0.6", platform: :mri
end

group :development do
  gem "letter_opener"
  gem "listen", "3.0.8"
  gem "spring", "2.0.2"
  gem "spring-watcher-listen", "2.0.1"
  gem "web-console", "3.5.1"
end

group :test do
  gem "rails-controller-testing", "1.0.2"
  gem "minitest-reporters", "1.1.14"
  gem "guard", "2.13.0"
  gem "guard-minitest", "2.4.4"
end

group :production do
  gem "pg", "0.18.4"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
