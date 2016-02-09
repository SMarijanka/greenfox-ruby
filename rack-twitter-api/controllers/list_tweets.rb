require 'database'
require 'actions/list_tw'

module Controllers
  class ListTweets
    def self.call(env, data, params)
      res = Action::ListTweets.list(params)
      [200, { 'Content-Type' => 'application/json' }, [res.to_a.to_json]]
    end
  end
end