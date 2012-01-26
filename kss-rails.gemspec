# -*- encoding: utf-8 -*-
Gem::Specification.new do |gem|
  gem.authors       = ['Garrett Bjerkhoel']
  gem.email         = ['me@garrettbjerkhoel.com']
  gem.description   = %q{Rails 3 engine to provide a living styleguide from Kyle Neath's KSS.}
  gem.summary       = %q{Rails 3 engine to provide a living styleguide from Kyle Neath's KSS.}
  gem.homepage      = 'https://github.com/dewski/kss-rails'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'kss-rails'
  gem.require_paths = ['lib']
  gem.version       = '1.0.1'
  
  gem.add_dependency 'kss'
  gem.add_dependency 'rails', '>= 3.0.0'
end
