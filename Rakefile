require "bundler"
Bundler.setup

require "rake"
require "rspec/core/rake_task"

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "mongoid_integer_id/version"

task :gem => :build
task :build do
  system "gem build mongoid_integer_id.gemspec"
end

task :install => :build do
  system "gem install mongoid_integer_id-#{Mongoid::IntegerId::VERSION}.gem"
end

task :release => :build do
  system "git tag -a v#{Mongoid::IntegerId::VERSION} -m 'Tagging #{Mongoid::IntegerId::VERSION}'"
  system "git push --tags"
  system "gem push mongoid_integer_id-#{Mongoid::IntegerId::VERSION}.gem"
  system "rm mongoid_integer_id-#{Mongoid::IntegerId::VERSION}.gem"
end

RSpec::Core::RakeTask.new("spec") do |spec|
  spec.pattern = "spec/**/*_spec.rb"
end

RSpec::Core::RakeTask.new('spec:progress') do |spec|
  spec.rspec_opts = %w(--format progress)
  spec.pattern = "spec/**/*_spec.rb"
end

task :default => :spec
