class PigLatinizer

  def piglatinize(text)
    words = text.split(" ")
    words_array = []
    words.each do |word|
      word_array = word.split("")
      if consonant_sound(word_array)
        first_letter = word_array[0]
        word_array << first_letter
        word_array << "ay"
        word_array.shift
        words_array << word_array.join
      elsif consonant_cluster
        first_letter = word_array[0]
        second_letter = word_array[1]
        word_array << first_letter
        word_array << second_letter
        word_array << "ay"
        word_array.shift
        words_array << word_array.join
      elsif vowel_sound
        word_array << "way"
        word_array.shift
        words_array << word_array.join
      end

    end

    result = words_array.join(" ")
    result
  end

  def consonant_sound(text_array)
    if ((text_array[0] =~ (/[bcdfghjklmnpqrstvwxyz]/)) != nil) && ((text_array[1] =~ (/[aeiou]/)) != nil)
      true
    else
      false
    end
  end

  def consonant_cluster(text_array)
    if ((text_array[0] =~ (/[bcdfghjklmnpqrstvwxyz]/)) != nil) && ((text_array[1] =~ (/[bcdfghjklmnpqrstvwxyz]/)) != nil)
      true
    else
      false
    end
  end

  def vowel_sound(text_array)
    if ((text_array[0] =~ (/[aeiou]/)) != nil)
      true
    else
      false
    end
  end

end
