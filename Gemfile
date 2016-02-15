source 'https://rubygems.org'

gem 'coveralls', require: false

group :lint do
  gem 'foodcritic', '~> 5.0'
  gem 'rubocop', '~> 0.32'
  gem 'rainbow', '~> 2.0'
end

group :unit do
  gem 'berkshelf', '~> 3.0'
  gem 'chefspec', '~> 4.0'
  gem 'fauxhai', '~> 2.3'
end

group :integration do
  gem 'serverspec', '~> 2.29'
  gem 'kitchen-ec2', '~> 0.10'
end

group :development do
  gem 'guard'
  gem 'guard-kitchen'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'guard-foodcritic'
  gem 'rake'
end
