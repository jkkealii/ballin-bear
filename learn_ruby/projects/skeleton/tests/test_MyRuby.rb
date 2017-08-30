require "./lib/MyRuby.rb"
require "test/unit"

class TestMyRuby < Test::Unit::TestCase

  def test_sample
    assert_equal(4, 2 + 2)
  end

end
