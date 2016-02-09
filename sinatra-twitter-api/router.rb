require 'sinatra'
require_relative 'controllers/show_status'
require_relative 'controllers/update_status'
require_relative 'controllers/delete_status'

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
