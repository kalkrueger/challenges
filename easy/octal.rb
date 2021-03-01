class Octal
  def initialize(str)
    @number = str
  end

  def to_decimal
    return 0 unless valid?
    result = 0
    arr = @number.to_i.digits
    arr.each_with_index do |digit, i|
      result += (digit * 8**i)
    end
    result
  end

  private

  def valid?
    @number.chars.all?{ |dig| ('0'..'7').include?(dig)}
  end
end
