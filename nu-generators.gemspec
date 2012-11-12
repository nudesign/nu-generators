# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nu-generators/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Lucas Renan',            'Rodrigo Brancher',    'Tiago Rafael Godinho']
  gem.email         = ['contato@lucasrenan.com', 'rbrancher@gmail.com', 'tiagogodinho3@gmail.com']
  gem.description   = %q{nu design custom generators}
  gem.summary       = %q{nu design custom generators}
  gem.homepage      = "https://github.com/nudesign/nu-generators"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "nu-generators"
  gem.require_paths = ["lib"]
  gem.version       = Nu::Generators::VERSION
end
