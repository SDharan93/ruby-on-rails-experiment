source 'https://rubygems.org'

gem 'bcrypt', '3.1.12'
gem 'bootstrap-sass', '3.3.7'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem('byebug', { platform: :mri })
  gem('minitest', '~>5.10.3')
  gem('minitest-reporters', '1.1.14')
  gem('rails-controller-testing')
  gem('rubocop', '~> 0.57.1', { require: false })
end

group :development do
  gem('listen', '~> 3.0.5')
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem('spring')
  gem('spring-watcher-listen', '~> 2.0.0')
  # Access an IRB console on exception pages or by using <%= console %>
  # anywhere in the code.
  gem('web-console')
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem('tzinfo-data', { platforms: %i[mingw mswin x64_mingw jruby] })
