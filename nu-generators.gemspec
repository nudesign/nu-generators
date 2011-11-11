# -*- encoding: utf-8 -*-
require File.expand_path('../lib/nu-generators/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tiago Rafael Godinho"]
  gem.email         = ["tiagogodinho3@gmail.com"]
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "nu-generators"
  gem.require_paths = ["lib"]
  gem.version       = Nu::Generators::VERSION
end
