class PerfectNumber
  def self.classify(num)
    raise StandardError if num <= 0
    case divisors_sum(num) <=> num
    when 0 then 'perfect'
    when 1 then 'abundant'
    when -1 then 'deficient'; end
  end

  class << self
    private

    def divisors_sum(num)
      arr = []
      1.upto(Math.sqrt(num)) do |i|
        if num % i == 0
          arr << i
          arr << num / i if (num / i != num)
        end
      end
      arr.uniq.sum
    end
  end
end
