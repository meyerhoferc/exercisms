require 'pry'
class Hamming

  def self.compute(string_1, string_2)
    @counter = 0
    string_1 = string_1.chars
    string_2 = string_2.chars
    string_1.each do |letter|
      letter_index = string_1.index(letter)
      letter == string_2[letter_index] ? @counter : @counter += 1
    end
    @counter
  end

end
