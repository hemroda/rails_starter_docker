source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.2.0"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Flexible authentication solution for Rails with Warden (https://github.com/heartcombo/devise)
gem "devise", "~> 4.8"

# Rails View Helpers for Heroicons. (https://github.com/bharget/heroicon)
gem "heroicon", "~> 1.0.0"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem "image_processing", "~> 1.12.2"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# The kick-ass pagination ruby gem (https://github.com/ddnexus/pagy)
gem "pagy", "~> 6.0.0"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use main development branch of Rails
gem "rails", github: "rails/rails", branch: "main"

# Object-based searching for Active Record and Mongoid (currently). (https://github.com/activerecord-hackery/ransack)
gem "ransack", "~> 3.2.1"

# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Simple, efficient background processing for Ruby (https://sidekiq.org)
gem "sidekiq", "~> 7.0.3"

# Forms made easy! (https://github.com/heartcombo/simple_form)
gem "simple_form", "~> 5.1.0"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  gem "error_highlight", ">= 0.4.0", platforms: [:ruby]
end

group :test do
  # RSpec for Rails (https://github.com/rspec/rspec-rails)
  gem "rspec-rails", "~> 6.0.0"
end

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]

  # Easily generate fake data (https://github.com/faker-ruby/faker)
  gem "faker", "~> 2.19.0"
end
