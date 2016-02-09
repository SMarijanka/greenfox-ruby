require_relative 'test_helper'
require 'json'

class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_update_status
    post '/statuses/update/1', {"status" => "Juheeee", "user_id" => "1"}.to_json, { 'Content-Type' => 'application/json' }
    assert last_response.ok?
  end
end
