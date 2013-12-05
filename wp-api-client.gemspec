# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wp/api/version'

Gem::Specification.new do |s|
  s.name          = 'wp-api-client'
  s.version       = WP::API::VERSION
  s.authors       = ['Mike Hall']
  s.email         = ['mike@ugtastic.com']
  s.description   = %q{Client for the WP API}
  s.summary       = %q{A Ruby client for the WP API that's under-development by Ryan McCue (@rmccue).}
  s.homepage      = 'http://github.com/ugtastic/wp-api-client'
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($/)
  s.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'travis'

  s.add_dependency 'httparty'
end
