
require File.expand_path('../lib/rvc/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name = "rvc"
  gem.version       = RVC::VERSION
  gem.authors       = ['Rich Lane', 'Christian Dickmann']
  gem.email         = ['rlane@vmware.com']
  gem.summary       = 'vSphere console UI'
  gem.description   = 'cloned from https://github.com/vmware/rvc'
  gem.homepage      = 'https://github.com/m-31/rvc'
  gem.license       = 'MIT'

  gem.files         = `git ls-files -z`.split("\x0")
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.bindir        = 'bin'
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.require_paths = ['lib']

  gem.add_dependency 'rbvmomi', '>= 1.11.2'
  gem.add_dependency 'trollop', '>= 1.16.2'
  gem.add_dependency 'backports', '>= 1.18.2'
  gem.add_dependency 'highline', '>= 1.6.1'
  gem.add_dependency 'zip', '>= 2.0.2'
  gem.add_dependency 'terminal-table', '>= 1.4.2'
  gem.add_dependency 'ffi'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'simplecov', '~> 0.9.0'
end
