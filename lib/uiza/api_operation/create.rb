module Uiza
  module APIOperation
    module Create
      def create params
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{self::OBJECT_API_PATH}"
        method = :post
        headers = {"Authorization" => Uiza.authorization}

        uiza_client = UizaClient.new url, method, headers, params, self::OBJECT_API_DESCRIPTION_LINK[:create]
        response = uiza_client.execute_request

        retrieve response
      end
    end
  end
end
