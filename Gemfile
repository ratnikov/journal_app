source 'http://rubygems.org'

gem 'rails', '3.0.7'

# Use the PostgreSQL gem instead of sqlite3
gem 'pg'

# Deploy with Capistrano
gem 'capistrano'

# Security gems
gem 'devise', '1.1.8'
gem 'cancan'

# Forms and Assets
gem 'paperclip'
gem 'formtastic'
gem 'validation_reflection'

# Prettiness plugins
gem 'hpricot'
gem 'sass'

# Rails 3.0.7 has now moved error_messages for forms to a
# seperate plugin. This is it
# Homepage: https://github.com/joelmoss/dynamic_form
# git repo: git://github.com/rails/dynamic_form.git
gem 'dynamic_form'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'factory_girl'
  gem 'rspec-rails', '2.5.0'
  gem 'rspec-expectations'
  gem 'rspec-i18n'
  gem 'rspec_validation_expectations'
  gem 'rspec_hpricot_matchers'
  gem 'rcov'
  gem 'configuration'
  gem 'annotate'
  gem 'autotest'
  gem 'autotest-growl'
  gem 'autotest-fsevent'
  gem 'autotest-rails'
  gem 'autotest-rails-pure'
  gem 'email_spec'
end

group :test do
  gem 'launchy'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'capybara'
end