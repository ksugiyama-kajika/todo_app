# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'todo/version'

Gem::Specification.new do |spec|
  spec.name          = "todo"
  spec.version       = Todo::VERSION
  spec.authors       = ["ksugiyama"]
  spec.email         = ["sugiyama.30n@gmail.com"]
  spec.description   = %q{todo_app}
  spec.summary       = %q{perfect_ruby_15}
  spec.homepage      = "https://github.com/ksugiyama-kajika/todo_app.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"   , "~> 1.3"
  spec.add_development_dependency "rake"      , "~> 10.0"
  spec.add_development_dependency "yard"      , "~> 0.8"
  spec.add_development_dependency "redcarpet" , "~> 2.2"
  spec.add_dependency "activerecord", "~> 3.2.0"
  spec.add_dependency "sqlite3", "~> 1.3.0"

end
