class WordChainer
  def initialize(dictionary_file_name)
    @dictionary = File.readlines(dictionary_file_name).map(&:chomp)
  end

  def adjacent_word(word)
    new_dictionary = []
    @dictionary.each do |new_word|
      #p new_word
      if count_distance(new_word, word) == 1
        new_dictionary << new_word
      end
       new_dictionary
    end
  end

  def count_distance(current_word, word)
  #  p current_word
  #  p word
    if current_word.length != word.length
      return 0
    end
    current_word,  word = current_word.chars, word.chars
    res = current_word.zip(word)
    res.inject(0) do |sum, sym|
      if sym.last != sym.first
        sum += 1
      else
        sum
      end
    end
  end

  def run(source, target)

  end

end
