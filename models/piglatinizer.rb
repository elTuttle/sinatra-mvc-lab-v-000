class PigLatinizer

  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def piglatinizes
    words = @text.split(" ")
    words.each do |word|

      word_array = word.split("")
      first_letter = word_array[0]
      word_array << first_letter
      word_array << "ay"
      word_array.shift
      word = word_array.join
    end

    words.join(" ")
    
  end

end
