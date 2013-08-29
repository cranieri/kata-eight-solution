class KataFast
  def initialize(file_name = 'WordList.txt')
    @one_letter_words = {}
    @two_letter_words = {}
    @three_letter_words = {}
    @four_letter_words = {}
    @five_letter_words = {}
    @file_name = file_name
  end

  def find_matches

    six_letter_words = []
    File.new(@file_name, 'r').each_line do |line|
      word = line.chomp
      case word.length
        when 1
          @one_letter_words[word] = 0
        when 2
          @two_letter_words[word] = 0
        when 3
          @three_letter_words[word] = 0
        when 4
          @four_letter_words[word] = 0
        when 5
          @five_letter_words[word] = 0
        when 6
          six_letter_words << word
      end
    end

    results = []

    six_letter_words.each do |word|
      part_1 = word[0 .. 0]
      part_2 = word[1 .. 5]
      if @five_letter_words.has_key? part_2 and @one_letter_words.has_key? part_1
        results << "#{part_1} + #{part_2} => #{word}\n"
      end

      part_1 = word[0 .. 1]
      part_2 = word[2 .. 5]
      if @four_letter_words.has_key? part_2 and @two_letter_words.has_key? part_1
        results << "#{part_1} + #{part_2} => #{word}\n"
      end

      part_1 = word[0 .. 2]
      part_2 = word[3 .. 5]
      if @three_letter_words.has_key? part_1 and @three_letter_words.has_key? part_2
        results << "#{part_1} + #{part_2} => #{word}\n"
      end

      part_1 = word[0 .. 3]
      part_2 = word[4 .. 5]
      if @four_letter_words.has_key? part_1 and @two_letter_words.has_key? part_2
        results << "#{part_1} + #{part_2} => #{word}\n"
      end

      part_1 = word[0 .. 4]
      part_2 = word[5 .. 5]
      if @five_letter_words.has_key? part_1 and @one_letter_words.has_key? part_2
        results << "#{part_1} + #{part_2} => #{word}\n"
      end
    end
    results
  end

end