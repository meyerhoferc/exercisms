module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(string_1, string_2)
    string_1.length == string_2.length ? true : raise(ArgumentError)
    @counter = 0
    string_1 = string_1.chars
    string_2 = string_2.chars
    string_1.each_with_index do |letter, index|
      letter == string_2[index] ? @counter : @counter += 1
    end
    @counter
  end
end
