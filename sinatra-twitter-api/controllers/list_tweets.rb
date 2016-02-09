require_relative '../actions/list_tw'
require 'json'

module Controllers
  class ListTweets
    def self.call(params)
      res = Action::ListTweets.list(params)
      [200, { 'Content-Type' => 'application/json' }, [res.to_a.to_json]]
    end
  end
end
