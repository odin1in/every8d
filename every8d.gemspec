# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'every8d/version'

Gem::Specification.new do |spec|
  spec.name          = "every8d"
  spec.version       = Every8d::VERSION
  spec.authors       = ["odin1in"]
  spec.email         = ["odin@shenlearn.com"]
  spec.summary       = %q{Taiwan SMS Provider Every8d API}
  spec.description   = %q{see description}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.2"
end
