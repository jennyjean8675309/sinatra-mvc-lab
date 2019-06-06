class PigLatinizer

    def split_phrase(phrase)
        phrase.split(' ')
    end

    def split_word(word)
        word.split(/([aeiou].*)/)
    end
      
    def word_latinizer(word)
        first_part = split_word(word)[1]
        second_part = split_word(word)[0]
      
        if "aeiouAEIOU".include?(word[0])
          word += "way"
        elsif "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".include?(second_part[0])
          first_part + second_part += "ay"
        else
          first_part += "way"
        end
    end

    def piglatinize(phrase)
        words = split_phrase(phrase)
        new_phrase = []

        words.each do |word|
            new_word = word_latinizer(word)
            new_phrase << new_word
        end

        new_phrase.join(' ')
    end
end