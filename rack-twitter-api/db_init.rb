require 'sequel'
require 'database'

$DB.create_table :statuses do
	primary_key :id
  	String :status
  	DateTime :time
  	foreign_key :user_id, :users
end

$DB.create_table :users do
	primary_key :id
	String :name, unique: true
end

$DB.create_table :friendships do
	primary_key :id
	foreign_key :user1_id, :users
	foreign_key :user2_id, :users
	DateTime :time
end



