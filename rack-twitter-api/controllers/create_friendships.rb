require 'database'
require 'actions/create_fs'

module Controllers
  class CreateFriendship
    def self.call(env, data, params)
    	res = Action::Create.friendship(data)
      	[200, { 'Content-Type' => 'application/json' }, [res.to_json]]
    end
  end
end