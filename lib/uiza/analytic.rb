module Uiza
  class Analytic

    ANALYTIC_API_PATH = "analytic/dashboard".freeze
    ANALYTIC_API_DESCRIPTION_LINK = "https://uizaio.atlassian.net/wiki/spaces/~13463283/pages/76382209/Analytic+Dashboard+Sample+Data".freeze

    class << self
      def total_summary params = { :startDate => (Date.today - 30).strftime("%Y-%m-%d"), :endDate => Date.today.strftime("%Y-%m-%d") }
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{ANALYTIC_API_PATH}/total-summary"
        method = :get
        headers = {"Authorization" => Uiza.authorization}

        uiza_client = UizaClient.new url, method, headers, params, ANALYTIC_API_DESCRIPTION_LINK
        uiza_client.execute_request
      end

      def popular_views params = { :startDate => (Date.today - 30).strftime("%Y-%m-%d"), :endDate => Date.today.strftime("%Y-%m-%d") }
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{ANALYTIC_API_PATH}/popular"
        method = :get
        headers = {"Authorization" => Uiza.authorization}

        uiza_client = UizaClient.new url, method, headers, params, ANALYTIC_API_DESCRIPTION_LINK
        uiza_client.execute_request
      end

      def trending_views params = { :startDate => (Date.today - 30).strftime("%Y-%m-%d"), :endDate => Date.today.strftime("%Y-%m-%d") }
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{ANALYTIC_API_PATH}/trending"
        method = :get
        headers = {"Authorization" => Uiza.authorization}

        uiza_client = UizaClient.new url, method, headers, params, ANALYTIC_API_DESCRIPTION_LINK
        uiza_client.execute_request
      end

      def concurrent_views params = { :startDate => (Date.today - 30).strftime("%Y-%m-%d"), :endDate => Date.today.strftime("%Y-%m-%d") }
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{ANALYTIC_API_PATH}/count-current-user"
        method = :get
        headers = {"Authorization" => Uiza.authorization}

        uiza_client = UizaClient.new url, method, headers, params, ANALYTIC_API_DESCRIPTION_LINK
        uiza_client.execute_request
      end

      def top_country_views params = { :startDate => (Date.today - 30).strftime("%Y-%m-%d"), :endDate => Date.today.strftime("%Y-%m-%d") }
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{ANALYTIC_API_PATH}/top10-country-view"
        method = :get
        headers = {"Authorization" => Uiza.authorization}

        uiza_client = UizaClient.new url, method, headers, params, ANALYTIC_API_DESCRIPTION_LINK
        uiza_client.execute_request
      end

      def top_content_line params = {}
        url = "https://#{Uiza.workspace_api_domain}/api/public/#{Uiza.api_version}/#{ANALYTIC_API_PATH}/top-content-line"
        method = :get
        headers = {"Authorization" => Uiza.authorization}
				params = params.merge!({ :interval => "1M" })

        uiza_client = UizaClient.new url, method, headers, params, ANALYTIC_API_DESCRIPTION_LINK
        uiza_client.execute_request
      end
    end
  end
end
