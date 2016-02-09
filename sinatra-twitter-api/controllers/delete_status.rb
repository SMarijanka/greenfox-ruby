require_relative '../actions/delete'
require 'json'

module Controllers
  class DeleteStatus
    def self.call(params)
      res = Action::Delete.destroy(params)
      if res == 1
        result = {result: "ok"}.to_s
      else
        result = {result: "error"}.to_s
      end
        [200, { 'Content-Type' => 'text/plain' }, [result]]
    end
  end
end
