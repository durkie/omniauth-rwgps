# frozen_string_literal: true

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Rwgps < OmniAuth::Strategies::OAuth2
      option :name, 'rwgps'
      option :client_options, {
        :site => 'https://ridewithgps.com/',
        :authorize_url => 'https://ridewithgps.com/oauth/authorize',
        :token_url => 'https://ridewithgps.com/oauth/token.json'
      }

      uid { raw_info['user']['id'] }

      def raw_info
        @raw_info ||= access_token.get('/users/current.json').parsed
      end
    end
  end
end
