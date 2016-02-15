require 'rubocop/rake_task'
require 'foodcritic'

# Style tests. Rubocop and Foodcritic
namespace :style do
  desc 'Run Rubocop'
  RuboCop::RakeTask.new(:ruby)

  desc 'Run FoodCritic'
  FoodCritic::Rake::LintTask.new(:chef) do |task|
    puts 'Running FoodCritic...'
    task.options = {
      fail_tags: ['any']
    }
  end
end

desc 'Run all lint checks'
task style: %w(style:chef style:ruby)

desc 'Run all checks and tests'
task ci: %w(style)

task default: :ci
