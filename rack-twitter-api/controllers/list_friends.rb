require 'database'
require 'actions/list_fr'

module Controllers
  class ListFriends
    def self.call(env, data, params)
      res = Action::ListFriends.list(params)
      [200, { 'Content-Type' => 'application/json' }, [res.to_a.to_json]]
    end
  end
end