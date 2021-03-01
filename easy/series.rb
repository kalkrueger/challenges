#break string into an array of numbers
#iterate through the array, gathering all possible consecutives of a certain len


class Series
  def initialize(str)
    @numbers = str.chars.map(&:to_i)
  end

  def slices(len)
    raise ArgumentError if len > @numbers.length
    @numbers.each_cons(len).to_a
  end
end
