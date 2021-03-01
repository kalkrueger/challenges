#instantiate with a number as an argument
#convert to roman numeral numbers
# => I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000
#   if I before symbol -= 1, if after += 1
#divide num by each incriment and take remainder

class RomanNumeral

  def initialize(num)
    @number = num
  end

  def to_roman
    @roman = ''
    thousand
    fivehundred
    hundred
    fifty
    ten
    five
    one
    @roman
  end

  private

  def thousand
    @input, @remainder = @number.divmod(1000)
    @roman << 'M' * @input
    if @remainder >= 900
        @roman << 'CM'
        @remainder -= 900
    end
  end

  def fivehundred
    @input, @remainder = @remainder.divmod(500)
    @roman << 'D' * @input
    if @remainder >= 400
        @roman << 'CD'
        @remainder -= 400
    end
  end

  def hundred
    @input, @remainder = @remainder.divmod(100)
    @roman << 'C' * @input
    if @remainder >= 90
        @roman << 'XC'
        @remainder -= 90
    end
  end

  def fifty
    @input, @remainder = @remainder.divmod(50)
    @roman << 'L' * @input
    if @remainder >= 40
        @roman << 'XL'
        @remainder -= 40
    end
  end

  def ten
    @input, @remainder = @remainder.divmod(10)
    @roman << 'X' * @input
    if @remainder >= 9
        @roman << 'IX'
        @remainder -= 9
    end
  end

  def five
    @input, @remainder = @remainder.divmod(5)
    @roman << 'V' * @input
    if @remainder >= 4
        @roman << 'IV'
        @remainder -= 4
    end
  end

  def one
    @roman << 'I' * @remainder
  end

end
