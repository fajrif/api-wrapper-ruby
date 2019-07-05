module Uiza
  class Live
    extend Uiza::APIOperation::Create
    extend Uiza::APIOperation::Retrieve
    extend Uiza::APIOperation::Update
    extend Uiza::APIOperation::List

    OBJECT_API_PATH = "live/entity".freeze
    REGION_OBJECT_API_PATH = "live/region".freeze
    OBJECT_API_DESCRIPTION_LINK = {
      create: "https://docs.uiza.io/v4/#create-a-live-event",
      retrieve: "https://docs.uiza.io/v4/#retrieve-a-live-event",
      update: "https://docs.uiza.io/v4/#update-a-live-event",
      start_feed: "https://docs.uiza.io/v4/#start-a-live-feed",
      list_recorded: "https://docs.uiza.io/v4/#list-recorded-files",
      stop_feed: "https://docs.uiza.io/v4/#stop-a-live-feed",
      get_view: "https://docs.uiza.io/v4/#retrieve-views",
      delete: "https://docs.uiza.io/v4/#delete-a-record-file",
      convert_to_vod: "https://docs.uiza.io/v4/#convert-into-vod",
      list: "https://docs.uiza.io/v4/#live-streaming",
      get_regions: "https://docs.uiza.io/v4/#get_regions",
      search_advance: "https://uizaio.atlassian.net/wiki/spaces/~13463283/pages/78544942/Search+APIs+Advance+for+Video+Live"
    }.freeze

    class << self
			def search_advance params = {}
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{OBJECT_API_PATH}/search-advance"
        method = :get
        headers = {"Authorization" => Uiza.authorization}
        description_link = OBJECT_API_DESCRIPTION_LINK[:search_advance]

        uiza_client = UizaClient.new url, method, headers, params, description_link
        uiza_client.execute_request
			end

      def start_feed id
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{OBJECT_API_PATH}/feed"
        method = :post
        headers = {"Authorization" => Uiza.authorization}
        params = {id: id}

        uiza_client = UizaClient.new url, method, headers, params, OBJECT_API_DESCRIPTION_LINK[:start_feed]
        response = uiza_client.execute_request
      end

      def get_regions
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{REGION_OBJECT_API_PATH}"
        method = :get
        headers = {"Authorization" => Uiza.authorization}
        description_link = OBJECT_API_DESCRIPTION_LINK[:get_regions]

        uiza_client = UizaClient.new url, method, headers, nil, description_link
        uiza_client.execute_request
      end

      def get_view id
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{OBJECT_API_PATH}/tracking/current-view"
        method = :get
        headers = {"Authorization" => Uiza.authorization}
        params = {id: id}
        description_link = OBJECT_API_DESCRIPTION_LINK[:get_view]

        uiza_client = UizaClient.new url, method, headers, params, description_link
        uiza_client.execute_request
      end

      def stop_feed id
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{OBJECT_API_PATH}/feed"
        method = :put
        headers = {"Authorization" => Uiza.authorization}
        params = {id: id}

        uiza_client = UizaClient.new url, method, headers, params, OBJECT_API_DESCRIPTION_LINK[:stop_feed]
        response = uiza_client.execute_request
      end

      def list_recorded params = {}
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{OBJECT_API_PATH}/dvr"
        method = :get
        headers = {"Authorization" => Uiza.authorization}

        uiza_client = UizaClient.new url, method, headers, params, OBJECT_API_DESCRIPTION_LINK[:list_recorded]
        uiza_client.execute_request
      end

      def delete id
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{OBJECT_API_PATH}/dvr"
        method = :delete
        headers = {"Authorization" => Uiza.authorization}
        params = {id: id}

        uiza_client = UizaClient.new url, method, headers, params, OBJECT_API_DESCRIPTION_LINK[:delete]
        uiza_client.execute_request
      end

      def convert_to_vod id
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{OBJECT_API_PATH}/dvr/convert-to-vod"
        method = :post
        headers = {"Authorization" => Uiza.authorization}
        params = {id: id}

        uiza_client = UizaClient.new url, method, headers, params, OBJECT_API_DESCRIPTION_LINK[:convert_to_vod]
        uiza_client.execute_request
      end
    end
  end
end
