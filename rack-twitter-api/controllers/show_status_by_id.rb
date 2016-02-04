require 'database'
require 'actions/show_by_id'

module Controllers
  class ShowStatusById
    def self.call(env, data, params)
      res = Action::Show.show(params)
      [200, { 'Content-Type' => 'application/json' }, [res.to_json]]
    end
  end
end
