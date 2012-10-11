require 'travis/api/app'

class Travis::Api::App
  class Endpoint
    # Artifacts are generated by builds. Currently we only expose logs as
    # artifacts
    class Artifacts < Endpoint
      # Fetches an artifact by it's *id*.
      get '/:id' do |id|
        respond_with service(:artifacts, :find_one, params)
      end
    end
  end
end
