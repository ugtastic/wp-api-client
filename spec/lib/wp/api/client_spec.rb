require 'spec_helper'

describe WP::API::Client do
  context '/' do
    it 'GET /' do
      VCR.use_cassette 'metadata' do
        metadata = WP::API::Client.new.metadata
        ap metadata['routes'].keys
        metadata.should_not be_nil
      end
    end

    context '/users/**' do
      it 'GET /users', :pending do
        VCR.use_cassette 'all users' do
          users = WP::API::Client.new.users
          users.should_not be_nil
        end
      end

      it 'GET /users/me', :pending do
        VCR.use_cassette 'my user' do
          users = WP::API::Client.new.users(:me)
          users.should_not be_nil
        end
      end
    end

    context '/posts/**' do
      it 'GET /posts' do
        VCR.use_cassette 'all posts' do
          posts = WP::API::Client.new.posts
          posts.should_not be_nil
        end
      end

      it 'GET /posts/:id' do
        VCR.use_cassette 'posts by id' do
          post = WP::API::Client.new.posts(1916)
          ap post
          post.should_not be_nil
        end
      end
    end
  end
end
