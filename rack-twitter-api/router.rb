require 'controllers/show_status'
require 'controllers/list_favorites'

class Router
  def initialize
    @routes = [
      { pattern: %r{^\/statuses\/show$}, method: 'GET', handler: Controllers::ShowStatus },
      { pattern: %r{^\/favorites\/list$}, method: 'GET', handler: Controllers::ListFavorites }
    ].freeze
  end

  def call(env)
    path = env['PATH_INFO']
    method = env['REQUEST_METHOD']

    route = @routes.find { |r| r[:pattern].match(path) && r[:method] == method }
    return error_404 if route.nil?

    route[:handler].call env
  end

  def error_404
    [404, { 'Content-Type' => 'text/plain' }, ['not found']]
  end
end
