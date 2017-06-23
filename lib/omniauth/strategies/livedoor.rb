module OmniAuth
  module Strategies
    class Livedoor < OmniAuth::Strategies::OpenID

      option :name, "livedoor"
      option :identifier, "https://auth.livedoor.com/openid/server.xrds"

      uid { livedoor_id }      

      info do
        {
          "identity_url" => raw_info.identity_url
        }
      end

      private
      
      def raw_info
        @raw_info ||= openid_response
      end
      
      def livedoor_id
        openid_response.display_identifier.split("/").last
      end

    end
  end
end

OmniAuth.config.add_camelization 'livedoor', 'Livedoor'
