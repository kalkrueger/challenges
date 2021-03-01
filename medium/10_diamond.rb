#take letter as an input.
#output diamond
#create array of letters
#loop until letter is hit returning letter with spaces equal to index
#reverse and do the same. combine and return

class Diamond
  LETTERS = %w( A B C D E F G H I J K L M N O P Q R S T U V W X Y Z )

  def self.make_diamond(max_letter)
    @max_index = LETTERS.find_index(max_letter)
    [diamond_up, diamond_down].flatten.join("\n") + "\n"
  end

  class << self
  private

    def diamond_up
      @arr = []
      create_row
      max_string = @arr.max_by(&:length).length
      @arr.map!{|line| line.center(max_string)}
    end

    def diamond_down
      @arr.reverse.drop(1)
    end

    def create_row
      spaces = 1
      (@max_index + 1).times do |i|
        current_letter = LETTERS[i]
        if current_letter == "A"
          @arr << "A"
        else
          @arr << "#{current_letter}#{" " * spaces}#{current_letter}"
          spaces += 2
        end
      end
    end
  end
end
