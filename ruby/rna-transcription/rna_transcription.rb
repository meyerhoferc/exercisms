module BookKeeping
  VERSION = 4
end

class Complement
  def self.of_dna(base)
    result = base.chars.map do |letter|
      complements.fetch(letter, '')
    end.join
    return '' if result.length != base.length
    result
  end

  def self.complements
    {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}
  end
end
