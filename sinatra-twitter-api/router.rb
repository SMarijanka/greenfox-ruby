require 'sinatra'
require_relative 'controllers/show_status'
require_relative 'controllers/update_status'
require_relative 'controllers/delete_status'
require_relative 'controllers/create_friendships'
require_relative 'controllers/list_friends'
require_relative 'controllers/list_tweets'
require_relative 'controllers/list_all_tweets'


get '/statuses/show/:id' do
  Controllers::ShowStatus.call(params)
end

post '/statuses/update/:id' do
  data = JSON.parse(request.body.read)
  Controllers::UpdateStatus.call(params, data)
end

delete '/statuses/destroy/:id' do
  Controllers::DeleteStatus.call(params)
end

post '/friendships/create' do
  data = JSON.parse(request.body.read)
  Controllers::CreateFriendship.call(params, data)
end

get '/friends/list/:id' do
  Controllers::ListFriends.call(params)
end

get '/timeline/users/:id' do
  Controllers::ListTweets.call(params)
end

get '/timeline/list' do
  Controllers::ListAllTweets.call(params)
end
