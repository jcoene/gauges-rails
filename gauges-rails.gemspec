lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'gauges/rails/version'

Gem::Specification.new do |s|

  s.name = 'gauges-rails'
  s.version = Gauges::Rails::VERSION
  s.authors = ['Jason Coene']
  s.email = ['jcoene@gmail.com']
  s.homepage = 'http://github.com/jcoene/gauges-rails'
  s.summary = 'Use Gaug.es with your Rails app.'
  s.description = 'Simple helper to add Gaug.es support to your Rails application.'

  s.add_development_dependency 'rails', '~> 3.1.0.rc'
  s.add_development_dependency 'rspec-rails', '~> 2.6.1'
  s.add_development_dependency 'capybara', '~> 1.0.1'
  s.add_development_dependency 'sqlite3', '~> 1.3.4'
  s.add_development_dependency 'launchy', '~> 2.0.5'

  s.files = Dir["lib/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.md"]

end