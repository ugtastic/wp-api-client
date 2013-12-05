require 'spec_helper'

describe WP::API::Client do
  it 'can fetch the metadata' do
    WP::API::Client.new.metadata.should_not be_nil
  end
end
