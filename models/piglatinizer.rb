class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    words_array = []
    words.each do |word|

      word_array = word.split("")
      first_letter = word_array[0]
      word_array << first_letter
      word_array << "ay"
      word_array.shift
      words_array << word_array.join

    end

    result = words_array.join(" ")
    result
  end

  def consonant_sound(text_array)

  end

  def consonant_cluster(text_array)

  end

  def vowel_sound(text_array)

  end

  def consonant_sound(text_array)

  end

end
