class BeerSong
  def self.verse(*verses)
    @lyrics = []
    verses = verses
    verses.each do |verse|
      @lyrics << "#{verse} bottles of beer on the wall, #{verse}" +
                 " bottles of beer.\nTake one down and pass it around, " +
                 "#{verse-1} bottles of beer on the wall.\n"
    end
    @lyrics.join
  end

  def self.verses(*verses)
    verse.(verses.flatten)
  end

  class << self
    def song_over
      @lyrics << "Go to the store and buy some more, 99 bottles of beer on the wall."
    end
  end
end
