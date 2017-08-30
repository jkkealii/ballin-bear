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

  def self.scan(sentence) # Or just *sentence and skip next two lines.
    @sentence = sentence.gets.chomp
    @words = @sentence.split

    @

    @words.each do |word|
      token = type_of(word)

    end

    return
  end

  private

  def type_of(word)
    lists = [@directions, @verbs, @stop_words, @nouns]

    lists.each do |type|
      type.each do |specific|
        next unless word == specific
        @result = type
        break
      end
      break if @result
    end
    if @result == @directions
      'direction'
    elsif @result == @verbs
      'verb'
    elsif @result == @stop_words
      'stop word'
    elsif @result == @nouns
      'noun'
    else
      'error'
  end

  def convert_number(object)
    begin
      return Integer(object)
    rescue
      return nil
    end
  end
end
