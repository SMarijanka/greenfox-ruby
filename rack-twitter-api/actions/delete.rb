module Action
	class Delete
		def self.destroy(params)
			$DB[:statuses].where(id: params['id'], user_id: params['authenticated_user']).delete
		end
	end
end