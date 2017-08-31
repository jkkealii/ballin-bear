require "ex48/parser.rb"
require "test/unit"

class TestParser < Test::Unit::TestCase
  def test_sentence()
    assert_equal('run', parse_sentence([['verb', 'run'], ['direction', 'north']]).verb)
    result = parse_sentence([['noun', 'princess'], ['verb', 'go'], ['direction', 'west']])
    assert_equal('princess', result.subject)
    assert_equal('go', result.verb)
    assert_equal('west', result.object)

    assert_raise(ParserError) do
      parse_sentence([['noun', 'princess'], ['noun', 'bear'], ['direction', 'west']])
    end
  end
end
