class Card
  VALUES = {
    'Jack' => 11,
    'Queen' => 12,
    'King' => 13,
    'Ace' => 14
  }

  include Comparable

  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  protected

  def <=>(other)
    self.value <=> other.value
  end

  def value
    case rank
    when 2..10 then rank
    else VALUES[rank]
    end
  end
end

class Deck
  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze
  attr_reader :deck

  def initialize
    @deck = []
    deck_reset
  end

  def deck_reset
    new_deck = []
    RANKS.each do |r|
      SUITS.each { |s| new_deck << Card.new(r, s) }
    end
    @deck = new_deck.shuffle
  end

  def draw
    deck_reset if deck.empty?
    @deck.pop
  end
end

deck = Deck.new
# p deck
drawn = []
52.times { drawn << deck.draw }
p drawn.count { |card| card.rank == 5 } == 4
p drawn.count { |card| card.suit == 'Hearts' } == 13

drawn2 = []
52.times { drawn2 << deck.draw }
p drawn != drawn2 # Almost always.
