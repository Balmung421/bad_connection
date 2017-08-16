require 'minitest/autorun'
require 'minitest/pride'
require_relative 'bad_connection'

class BadConnectionTest < Minitest::Test

  attr_reader :bad

  def setup
    @bad = BadConnection.new
  end

  def test_it_exists
    assert_instance_of BadConnection, @bad
  end

  def test_for_default_quit_state
    # refute bad.ready_to_quit
    assert_equal false, bad.ready_to_quit
  end

  def test_for_greeting
    greeting = "HELLO, THIS IS A GROCERY STORE!"
    assert_equal "HELLO, THIS IS A GROCERY STORE!", bad.greeting
  end

  # def test_for_input
  #
  # end



end
