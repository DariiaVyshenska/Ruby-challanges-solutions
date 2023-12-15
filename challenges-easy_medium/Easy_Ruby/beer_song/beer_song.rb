class BeerSong
  def self.verse(num)
    if num.zero?
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    elsif num == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\n" \
        "Take it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "#{bottles(num)} of beer on the wall, #{bottles(num)} of beer.\n" \
        "Take one down and pass it around, #{bottles(num - 1)} of beer on the wall.\n"
    end
  end

  def self.verses(start, stop)
    start.downto(stop).with_object([]) { |i, obj| obj << verse(i) }.join("\n")
  end

  def self.lyrics
    verses(99, 0)
  end

  class << self
    def bottles(num)
      (num == 1 ? '1 bottle' : "#{num} bottles")
    end
  end
end
