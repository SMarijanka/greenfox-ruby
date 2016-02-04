require 'database'
require 'actions/update'

module Controllers
  class UpdateStatus
    def self.call(env, data, params)
      res = Action::Update.update(data)
      [200, { 'Content-Type' => 'text/plain' }, [res.to_json]]
    end
  end
end