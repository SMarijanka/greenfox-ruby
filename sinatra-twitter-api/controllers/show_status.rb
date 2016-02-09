require_relative '../actions/show'
require 'json'

module Controllers
  class ShowStatus
    def self.call(params)
      res = Action::Show.show(params)
      [200, { 'Content-Type' => 'application/json' }, [res.to_json]]
    end
  end
end
