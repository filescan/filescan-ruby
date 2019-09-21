require 'mime/types'

module FilescanApi
  class Client

    module Scan

      def check_file(file)
        payload = { file: Faraday::UploadIO.new(file.path, MIME::Types.of(file.path).first.content_type) }
        resp = @connection.post("projects/#{@project_id}/scans", payload)
        Oj.load(resp.body)['data']
      end

      def scan_report(scan_id)
        resp = @connection.get("projects/#{project_id}/scans/#{scan_id}")
        Oj.load(resp.body)['data']
      end
    end
  end
end
