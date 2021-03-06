# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chefenv/version'

Gem::Specification.new do |gem|
  gem.name          = "chefenv"
  gem.version       = Chefenv::VERSION
  gem.authors       = ["Andrew Garson"]
  gem.email         = ["andrew.garson@gmail.com"]
  gem.description   = %q{Manage your current Chef server endpoint}
  gem.summary       = gem.description
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "thor"
end
