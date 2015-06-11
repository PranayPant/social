source 'https://rubygems.org'

# Ruby directive for current stable ruby version
ruby "2.0.0"

# Timezone info for Wondows
gem 'tzinfo-data'

# SSL handling for Windows
gem 'certified'

# For reading JSON files
gem 'json', :require => true

# Web re-directs
gem 'sinatra', :require => true

# Omniauth for login via FB, Twitter, etc.
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
gem 'oauth2', :require => true

# Gmail Integration
gem 'gmail_xoauth', :require => true
gem 'gmail', :require => true, git: "https://github.com/gmailgem/gmail.git"
gem 'google-api-client', git: "https://github.com/google/google-api-ruby-client.git"

# Ensure deployment with Heroku goes smoothly
gem 'rails_12factor', group: :production

# Use Puma as the production server
gem 'puma'

# Use PostgreSQL
gem 'pg'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Bootstrap for Sass
gem 'bootstrap-sass', '~> 3.3.4'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
#gem 'sdoc', '~> 0.4.0', group: :doc

# Devise for authentication and authorization
gem 'devise', git: 'https://github.com/plataformatec/devise'

# Use ActiveModel has_secure_password
#gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'debugger' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

