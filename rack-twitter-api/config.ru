require 'router'

use Rack::CommonLogger
use Rack::ShowExceptions
# use Rack::Static, :urls => ["/public"]

run Router.new
