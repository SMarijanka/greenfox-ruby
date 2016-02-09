require 'database'
require 'actions/list_alltw'

module Controllers
  class ListAllTweets
    def self.call(env, data, params)
      res = Action::ListAllTweets.list(params)
      [200, { 'Content-Type' => 'application/json' }, [res.to_a.to_json]]
    end
  end
end