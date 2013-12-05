# coding: utf-8
require 'httparty'
require 'wp/api/version'

module WP
  module API
    class Client
      include HTTParty

      base_uri 'www.ugtastic.com/wp-json.php'

      def metadata
        self.class.get('/')
      end

    end
  end
end
