require_relative '../actions/list_all_tw'
require 'json'

module Controllers
  class ListAllTweets
    def self.call(params)
      res = Action::ListAllTweets.list(params)
      [200, { 'Content-Type' => 'application/json' }, [res.to_a.to_json]]
    end
  end
end
