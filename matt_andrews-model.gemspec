# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'matt_andrews/model/version'

Gem::Specification.new do |spec|
  spec.name          = "matt_andrews-model"
  spec.version       = MattAndrews::Model::VERSION
  spec.authors       = ["Matt Andrews"]
  spec.email         = ["matt@mattandre.ws"]
  spec.summary       = "Ruby port of @wilsonpage's model"
  spec.description   = "A very simple model, based on the original javascript version by @wilsonpage"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
