class KataExtendible

  def initialize(number_of_words = 6, file_name = 'WordList.txt')
    (1..number_of_words).each do |n_word|
      instance_variable_set("@letter_words_#{n_word}", {})
    end
    @file_name = file_name
    @number_of_words = number_of_words
  end

  def find_matches
    six_letter_words = []
    File.new(@file_name, 'r').each_line do |line|
      word = line.chomp
      (1..@number_of_words).each do |n_word|
        if word.length == n_word
          eval("@letter_words_#{n_word}[word] = 0")
        elsif word.length == @number_of_words
          six_letter_words << word
        end
      end
    end

    results = []

    six_letter_words.each do |word|
      j = @number_of_words-1
      (1..@number_of_words-1).each do |i|
        part_1 = word[0..i-1]
        part_2 = word[i..@number_of_words-1]
        if instance_variable_get("@letter_words_#{i}").has_key?(part_1) && instance_variable_get("@letter_words_#{j}").has_key?(part_2)
          results << "#{part_1} + #{part_2} => #{word}\n"
        end
        j -= 1
      end
    end
    results.uniq!
    rescue => e
      p "Error occurred while trying to find matches: #{e}"
    end
end
