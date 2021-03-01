#instantiate DNA
#def hamming_distance that takes a second DNA as an argument
# => slice the larger DNA
# => compare and retrun num of differences

class DNA
  def initialize(sequence)
    @sequence = sequence
  end

  def hamming_distance(sequence2)
    difference = 0
    shortest = [@sequence.size, sequence2.size].min
    shortest.times do |idx|
      difference += 1 if @sequence[idx] != sequence2[idx]
    end
    difference
  end
end
