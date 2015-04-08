# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'warray/version'

Gem::Specification.new do |spec|
  spec.name          = "warray"
  spec.version       = Warray::VERSION
  spec.authors       = ["Zoltan Gabulya"]
  spec.email         = ["gabulyaz@gmail.com"]
  spec.summary       = %q{Weighted array implementation.}
  spec.description   = %q{Warray is a simple weighted array implementation.}
  spec.homepage      = "https://github.com/gabulyaz/warray"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
