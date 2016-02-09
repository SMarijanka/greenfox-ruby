ENV["RAILS_ENV"] = "test"

require 'minitest/autorun'
require 'rack/test'

require_relative '../router.rb'
