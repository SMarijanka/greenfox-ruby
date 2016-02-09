require_relative '../actions/update'
require 'json'

module Controllers
  class UpdateStatus
    def self.call(params, data)
      res = Action::Update.update(data)
      [200, { 'Content-Type' => 'application/json' }, [res.to_json]]
    end
  end
end
