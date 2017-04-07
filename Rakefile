# Rspec and ChefSpec
namespace :unit do
  desc 'Unit Tests (Rspec & ChefSpec)'
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:rspec)
end

# Style tests. Rubocop and Foodcritic
namespace :style do
  require 'rubocop/rake_task'
  require 'foodcritic'
  desc 'RuboCop'
  RuboCop::RakeTask.new(:ruby)

  desc 'FoodCritic'
  FoodCritic::Rake::LintTask.new(:chef) do |task|
    task.options = {
  fail_tags: ['correctness'],
  chef_version: '12.18.31',
  tags: %w(~FC001 ~FC019 ~FC016 ~FC039)
    }
  end
end

desc 'Circle CI Tasks'
task circleci: %w(style:chef style:ruby)

desc 'Default Tasks - rake <enter>'
task default: %w(style:chef style:ruby)
