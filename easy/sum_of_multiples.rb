class SumOfMultiples
  def initialize(*nums)
    @nums = nums
  end

  def to(limit)
    multiples = []
    @nums.each do |num|
      1.upto(limit / num) do |i|
        multiples << num * i unless (num * i) == limit
      end
    end
    multiples.uniq.sum
  end

  def self.to(limit)
    self.new(3, 5).to(limit)
  end
end
