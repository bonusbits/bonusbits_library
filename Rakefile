# For CircleCI
require 'bundler/setup'

# Style tests. Rubocop and Foodcritic
namespace :lint do
  require 'rubocop/rake_task'
  require 'foodcritic'
  desc 'RuboCop'
  RuboCop::RakeTask.new(:ruby)

  desc 'FoodCritic'
  FoodCritic::Rake::LintTask.new(:chef) do |task|
    task.options = {
      fail_tags: ['correctness'],
      chef_version: '12.13.37',
      tags: %w(~FC001 ~FC019 ~FC016)
    }
  end
end

# Rspec and ChefSpec
namespace :unit do
  desc 'Unit Tests (Rspec & ChefSpec)'
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:rspec)
end

desc 'Travis CI Tasks'
task travisci: %w(lint:chef lint:ruby)

desc 'Circle CI Tasks'
task circleci: %w(lint:chef lint:ruby)

desc 'Lint Tasks <enter>'
task lint: %w(lint:chef lint:ruby)

desc 'Default Tasks - rake <enter>'
task default: %w(lint:chef lint:ruby)
