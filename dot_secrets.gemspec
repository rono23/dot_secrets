$:.push File.expand_path('../lib', __FILE__)

require 'dot_secrets/version'

Gem::Specification.new do |s|
  s.name        = 'dot_secrets'
  s.version     = DotSecrets::VERSION
  s.authors     = ['rono23']
  s.email       = ['rono23@gmail.com']
  s.homepage    = 'https://github.com/rono23/dot_secrets'
  s.summary     = 'Enable dot syntax on nested Rails.application.secrets.'
  s.description = 'Enable dot syntax on nested Rails.application.secrets.'
  s.license     = 'MIT'

  s.required_ruby_version = '~> 2.0'

  s.files = Dir["{app,config,db,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.1.0.beta1'

  s.add_development_dependency 'sqlite3'
end
