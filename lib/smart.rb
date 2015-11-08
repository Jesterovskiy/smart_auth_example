require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Smart < OmniAuth::Strategies::OAuth2
      option :name, 'smart'
      option :client_options, {
        site:          'http://smart-auth.r15.railsrumble.com',
        authorize_url: 'http://smart-auth.r15.railsrumble.com/oauth/authorize'
      }

      uid {
        raw_info['id']
      }

      info do
        {
          email: raw_info['email'],
        }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/me').parsed
      end
    end
  end
end
