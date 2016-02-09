require_relative 'test_helper'
require 'json'

class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_delete_status
    delete '/statuses/destroy/2?authanticated_user=1'
    assert last_response.ok?
    assert_equal '{:result=>"error"}', last_response.body
  end
end
