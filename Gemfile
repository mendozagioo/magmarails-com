source 'http://rubygems.org'

gem 'rails', '~> 3.2.9'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'jquery-rails'
gem 'haml-rails'

gem 'mandrill_mailer'
gem 'gibbon'
gem 'pry'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'zurb-foundation', '~> 4.0.0'
end

group :test do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
end

group :development do
  gem 'sqlite3'
end

group :production do
  gem 'thin'
  gem 'pg'
end
gem 'rb-readline'