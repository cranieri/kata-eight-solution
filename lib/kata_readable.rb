class KataReadable
  MAX_LENGTH = 6

  def initialize(file_name = 'WordList.txt')
    @word_list = []
    @file_name = file_name
  end

  def find_matches
    build_word_list
    matches = []
    @word_list[MAX_LENGTH].keys.sort.each do |word|
      (1..5).each do |word_length|
        part_1 = word[0..word_length - 1]
        part_2 = word[word_length..5]
        if is_a_match?(word_length, part_1, part_2)
          matches << "#{part_1} + #{part_2} => #{word}"
        end
      end
    end
    matches
  end

  private

  def build_word_list
    (1..MAX_LENGTH).each { |len| @word_list[len] = {} }
    dict = File.open @file_name, 'r'
    dict.each_line do |line|
      word = clean_word(line)
      len = word.length
      @word_list[len][word] = nil if len <= MAX_LENGTH && len > 0
    end
    dict.close
  end


  def is_a_match?(word_length, part_1, part_2)
    @word_list[word_length].include?(part_1) && @word_list[MAX_LENGTH - word_length].include?(part_2)
  end

  def clean_word(word)
    word.chomp.strip
  end
end