require_relative 'test_helper'
require 'json'

class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_show_status
    get '/statuses/show/10'
    json = {"id" => 10,
            "status"=>"Szívecske",
            "time"=>"2016-02-09 13:41:16 +0100",
            "user_id"=>1}
    res = JSON.parse(last_response.body)
    assert last_response.ok?
    assert_equal json, res
  end
end
