require "bundler/gem_tasks"
require "rake/testtask"
require "yard"

Rake::TestTask.new(:test) do |t|
  t.pattern = "test/**/*_test.rb"
  t.libs << "test"
end

YARD::Rake::YardocTask.new do |t|
  t.files = ['lib/**/*.rb', 'bin/dainty' ]
end

task :default => :test
