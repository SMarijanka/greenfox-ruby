require_relative '../database'

module Action
  class ListFriends
    def self.list(params)
      $DB[:friendships].join_table(:left, :users, :id => :user2_id).select(:users__name, :friendships__time).where(user1_id: params['id'])
    end
  end
end
