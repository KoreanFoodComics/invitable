$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'invitable/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'invitable'
  s.version     = Invitable::VERSION
  s.authors     = ['Brian Cardarella']
  s.email       = ['brian@dockyard.com']
  s.homepage    = 'https://github.com/dockyard/invitable'
  s.summary     = 'Invitable'
  s.description = 'Invitable'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.rdoc']

  s.add_dependency 'rails', '~> 3.2.1'
  # s.add_dependency 'jquery-rails'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-webkit'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'valid_attribute'
end
