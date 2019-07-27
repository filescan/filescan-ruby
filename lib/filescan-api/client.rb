require 'faraday'
require 'oj'

require 'filescan-api/client/scan'
require 'filescan-api/client/project'

module FilescanApi
  class Client
    include FilescanApi::Client::Scan
    include FilescanApi::Client::Project

    attr_accessor :project_id

    API_BASE = 'https://api.filescan.dev/v1'

    def initialize(api_key=nil)
      @api_key = api_key || ENV['FILESCAN_API_KEY']
      @connection = connection
    end

    private

    def connection
      Faraday.new(API_BASE) do |conn|
        conn.request :multipart 
        conn.request :url_encoded
        conn.adapter :net_http  
        conn.headers['X-Api-Key'] = @api_key
        conn.headers['Accept'] = 'application/json'
      end
    end
  end
end