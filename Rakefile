# encoding: UTF-8
require 'rubygems'
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'gauges/rails/version'

require 'rake'

require 'rspec/core'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task :build do
  system "gem build gauges-rails.gemspec"
end

task :install => :build do
  system "gem install gauges-rails-#{Gauges::Rails::VERSION}.gem"
end

task :release => :build do
  system "git tag -a #{Gauges::Rails::VERSION} -m 'Tagging #{Gauges::Rails::VERSION}'"
  system "git push --tags"
  system "gem push gauges-rails-#{Gauges::Rails::VERSION}.gem"
  system "rm gauges-rails-#{Gauges::Rails::VERSION}.gem"
end

task :default => :spec