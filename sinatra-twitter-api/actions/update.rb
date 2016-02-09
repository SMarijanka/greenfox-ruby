require_relative '../database'

module Action
  class Update
    def self.update(data)
      $DB[:statuses].insert(status: data['status'], user_id: data['user_id'], time: DateTime.now)
    end
  end
end
