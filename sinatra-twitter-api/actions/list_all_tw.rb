require_relative '../database'

module Action
  class ListAllTweets
    def self.list(params)
      $DB[:friendships].join_table(:left, :users, :id => :user2_id).join_table(:inner, :statuses, :user_id => :id).select(:users__name, :statuses__status, :statuses__time).where(user1_id: params['authenticated_user'])
    end
  end
end
