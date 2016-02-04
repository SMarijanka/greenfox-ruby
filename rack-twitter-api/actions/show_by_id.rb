module Action
	class Show
		def self.show(params)
			$DB[:statuses].select_all.where(id: params['id']).first
		end
	end
end