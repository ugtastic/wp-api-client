# coding: utf-8
require 'httparty'
require 'wp/api/version'

module WP
  module API
    class Client
      include HTTParty
      base_uri 'www.ugtastic.com:443/wp-json.php'

      def initialize(username=nil, password=nil)
        @basic_auth = {:username => username, :password => password}
      end

      def metadata
        self.class.get('/')
      end

      def users(which=:all, options={})
        options.merge!(basic_auth: @basic_auth)

        if which == :all
          self.class.get('/users/')
        elsif which == :me
          self.class.get('/users/me/')
        end
      end

      def posts(id=nil)
        self.class.get("/posts/#{id}")
      end
    end
  end
end
