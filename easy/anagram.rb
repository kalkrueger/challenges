class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(arr)
    arr.select do |test|
      test = test.downcase
      test.chars.sort.join == @word.chars.sort.join &&
      test != @word
    end
  end
end
