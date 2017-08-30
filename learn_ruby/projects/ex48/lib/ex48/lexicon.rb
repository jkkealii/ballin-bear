class Lexicon
  @directions = %w[
    north south east west down up left right back
  ]

  @verbs = %w[
    go stop kill eat
  ]

  @stop_words = %w[
    the in of from at it
  ]

  @nouns = %w[
    door bear princess cabinet
  ]

  def self.scan(sentence)
    @words = sentence.split
    @tuples = []

    @words.each do |word|
      token = type_of(word)
      @tuples << [token, word]
    end

    return @tuples
  end

  def self.type_of(word)
    case
    when @directions.include?(word)
      'direction'
    when @verbs.include?(word)
      'verb'
    when @stop_words.include?(word)
      'stop'
    when @nouns.include?(word)
      'noun'
    when convert_number(word)
      'number'
    else
      'error'
    end
  end

  def self.convert_number(object)
    begin
      return Integer(object)
    rescue
      return nil
    end
  end
end
