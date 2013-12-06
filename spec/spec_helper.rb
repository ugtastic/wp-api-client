# coding: utf-8

require 'simplecov'
SimpleCov.start

MultiJson.engine = :oj

require 'awesome_print'

require 'vcr'
require 'webmock/rspec'

VCR.configure do |c|
  c.cassette_library_dir = 'vcr_cassettes'
  c.hook_into :webmock
  c.ignore_localhost = true
  c.default_cassette_options = {
    record: :new_episodes,
    serialize_with: :json
  }
  c.allow_http_connections_when_no_cassette = false
end

WebMock.disable_net_connect!(allow_localhost: true)

require 'wp/api/client'

RSpec.configure do |c|
  c.treat_symbols_as_metadata_keys_with_true_values = true
end
