require 'controllers/show_status'
require 'controllers/list_favorites'
require 'controllers/update_status'
require 'controllers/show_status_by_id'
require 'controllers/delete_status'
require 'controllers/create_friendships'
require 'json'

class Router
  def initialize
    @routes = [
      #{ pattern: %r{^\/statuses\/show$}, method: 'GET', handler: Controllers::ShowStatus },
      #{ pattern: %r{^\/favorites\/list$}, method: 'GET', handler: Controllers::ListFavorites },
      { pattern: %r{^\/statuses\/update$}, method: 'POST', handler: Controllers::UpdateStatus },
      { pattern: %r{^\/statuses\/showbyid$}, method: 'GET', handler: Controllers::ShowStatusById },
      { pattern: %r{^\/statuses\/destroy$}, method: 'DELETE', handler: Controllers::DeleteStatus},
      { pattern: %r{^\/friendships\/create$}, method: 'POST', handler: Controllers::CreateFriendship}
    ].freeze
  end

  def call(env)
    path = env['PATH_INFO']
    method = env['REQUEST_METHOD']

    request = Rack::Request.new(env)
    data = JSON.parse(request.body.read) if env['REQUEST_METHOD'] == 'POST'

    params = request.params

    route = @routes.find { |r| r[:pattern].match(path) && r[:method] == method }
    return error_404 if route.nil?

    route[:handler].call env, data, params
  end

  def error_404
    [404, { 'Content-Type' => 'text/plain' }, ['not found']]
  end
end
