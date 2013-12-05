# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wp/api/client/version'

Gem::Specification.new do |spec|
  spec.name          = 'wp-api-client'
  spec.version       = WP::API::Client::VERSION
  spec.authors       = ['Mike Hall']
  spec.email         = ['mike@ugtastic.com']
  spec.description   = %q{Client for the WP API}
  spec.summary       = %q{A Ruby client for the WP API that's under-development by Ryan McCue (@rmccue).}
  spec.homepage      = "http://github.com/ugtastic/wp-api-client"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_development_dependency 'travis'
end
