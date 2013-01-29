# encoding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require "mongoid_integer_id/version"

Gem::Specification.new do |s|
  s.name        = 'mongoid_integer_id'
  s.version     = Mongoid::IntegerId::VERSION
  s.platform    = Gem::Platform::RUBY
  s.summary     = ""
  s.description = ""
  s.authors     = ["Arthur Neves"]
  s.email       = 'arthurnn@gmail.com'
  s.files        = Dir.glob("lib/**/*") + %w(README.md Rakefile)
  s.require_paths = ["lib"]
  s.homepage    = 'https://github.com/arthurnn/mongoid_integer_id'

  s.add_dependency("mongoid", [">= 3.0.0"])

end
