require 'travis/api/app'

class Travis::Api::App
  class Endpoint
    class Accounts < Endpoint
      get '/', scope: :private do
        body service(:account).find_all, type: :account
      end
    end
  end
end