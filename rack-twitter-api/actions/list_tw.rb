module Action
	class ListTweets
		def self.list(params)
			$DB[:statuses].join_table(:left, :users, :id => :user_id).select(:users__name, :statuses__status).where(user_id: params['id'])
		end
	end
end