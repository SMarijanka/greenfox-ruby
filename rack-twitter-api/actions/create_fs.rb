module Action
	class Create
		def self.friendship(data)
			$DB[:friendships].insert(user1_id: data['user1_id'], user2_id: data['user2_id'], time: DateTime.now)
		end
	end
end