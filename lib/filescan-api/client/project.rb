module FilescanApi
  class Client

    module Project

      def list_projects
        resp = @connection.get("projects")
        Oj.load(resp.body)['data']
      end
    end
  end
end
