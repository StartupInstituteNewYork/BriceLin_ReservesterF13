source 'https://rubygems.org'
ruby '2.0.0'

gem 'rails', '4.0.0'
gem 'carrierwave'
gem 'rmagick'
gem 'fog', '~> 1.3.1'
gem 'haml'
gem 'devise'
gem 'parsley-rails'
gem "recaptcha", :require => "recaptcha/rails"
gem 'redis-rails'
gem 'resque', require: 'resque/server'
gem 'resque_mailer'

group :development, :test do
	gem 'rspec-rails', '~> 2.0'
	gem 'mysql2'
	gem 'dotenv-rails'
	gem 'factory_girl_rails'
	gem 'better_errors'
	gem 'binding_of_caller'
end

group :test do 
	gem 'faker' 
	gem 'capybara' 
	gem 'guard-rspec' 
	gem 'launchy' 
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end

gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'


group :doc do  
	gem 'sdoc', require: false
end
