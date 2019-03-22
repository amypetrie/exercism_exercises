require 'pry'
class Hamming

  def self.compute(dna_1, dna_2)
    dna_1 = dna_1.split('')
    dna_2 = dna_2.split('')
    raise ArgumentError if dna_1.length != dna_2.length
    zip = dna_1.zip(dna_2)
    count = 0
    zip.each do |pair|
      count += 1 if pair[0] != pair[1]
    end
    return count
  end

end
