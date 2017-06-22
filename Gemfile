source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "bcrypt"
gem "bootstrap-sass"
gem "bootstrap-will_paginate"
gem "carrierwave"
gem "coffee-rails"
gem "config"
gem "faker"
gem "fog"
gem "i18n-js"
gem "jbuilder"
gem "jquery-rails"
gem "mini_magick"
gem "puma"
gem "rails"
gem "sass-rails"
gem "toastr-rails"
gem "turbolinks"
gem "uglifier"

group :development, :test do
  gem "byebug", platform: :mri
  gem "sqlite3"
end

group :development do
  gem "listen"
  gem "spring"
  gem "spring-watcher-listen"
  gem "web-console"
end

group :test do
  gem "guard"
  gem "guard-minitest"
  gem "minitest-reporters"
  gem "rails-controller-testing"
end

group :production do
  gem "pg"
  gem "rails_12factor"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
