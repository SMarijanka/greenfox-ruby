require_relative '../actions/create_fs'
require 'json'

module Controllers
  class CreateFriendship
    def self.call(params, data)
      res = Action::Create.friendship(data)
      [200, { 'Content-Type' => 'application/json' }, [res.to_json]]
    end
  end
end
