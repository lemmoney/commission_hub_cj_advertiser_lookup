module CommissionHub
  module CommissionJunctionAdvertiserLookupV3
    module Endpoints
      class Base < CommissionHub::Endpoint
        
        def call(request_params={})
          request_params = { headers: { "Authorization" => authorization_token }}.merge(request_params)
          connection.class.get(full_uri, request_params)
        end

        def authorization_token
          connection.settings.authorization_token
        end
        
      end
    end
  end
end


