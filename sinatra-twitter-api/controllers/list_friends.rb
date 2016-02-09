require_relative '../actions/list_fr'
require 'json'

module Controllers
  class ListFriends
    def self.call(params)
      res = Action::ListFriends.list(params)
      [200, { 'Content-Type' => 'application/json' }, [res.to_a.to_json]]
    end
  end
end
