source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6', '>= 5.1.6.1'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails' #, '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
 gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


##########Added Gems##################
#Use Bootstrap sass
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
#Guide for carrierwave https://code.tutsplus.com/tutorials/rails-image-upload-using-carrierwave-in-a-rails-app--cms-25183
gem 'carrierwave', '~> 1.0'
gem 'mini_magick', '~> 4.5', '>= 4.5.1'
gem 'rails_layout', '~> 1.0', '>= 1.0.26'
gem 'webpacker'
#gem 'foundation-rails'
#gem 'autoprefixer-rails'


#Guide for Devise/BetterErrors/RailsLayout https://github.com/RailsApps/rails-devise-roles
gem 'devise'
gem 'rolify'
gem 'cancancan'
gem 'pundit'
gem 'draper'
gem 'activeadmin', '~> 2.0.0.rc1'
gem 'inherited_resources'#, github: 'activeadmin/inherited_resources'
gem 'country-select'
gem 'activeadmin-xls', '~>2.0.0'
gem 'activeadmin_addons'
gem 'active_admin_datetimepicker'
gem 'active_admin_theme'

#Calendar gems
gem 'trix'
gem "simple_calendar", "~> 2.0"

group :production do
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'spring'
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
