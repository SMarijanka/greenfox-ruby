module Action
	class ListFriends
		def self.list(params)
			$DB[:friendships].join_table(:left, :users, :id => :user2_id).select(:friendships__user2_id, :users__name, :friendships__time).where(user1_id: params['id'])
		end
	end
end