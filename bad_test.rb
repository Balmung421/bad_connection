require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bad'

class BadConnectionTest < Minitest::Test

  attr_reader :bad

  def setup
    @bad = BadConnection.new
  end

  def test_it_exists
    assert_instance_of BadConnection, @bad
  end


end
