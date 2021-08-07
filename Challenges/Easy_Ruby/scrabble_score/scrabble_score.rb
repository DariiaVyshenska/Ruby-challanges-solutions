class Scrabble
  SCORES = {
    1 => %w[A E I O U L N R S T],
    2 => %w[D G],
    3 => %w[B C M P],
    4 => %w[F H V W Y],
    5 => %w[K],
    8 => %w[J X],
    10 => %w[Q Z]
  }.freeze

  def initialize(word)
    @word = word ? clean_word(word) : ''
  end

  def score
    @word.chars.map { |ch| letter_score(ch) }.sum
  end

  def self.score(str)
    new(str).score
  end

  private

  def clean_word(word)
    word.upcase.gsub(/[^A-Z]/, '')
  end

  def letter_score(char)
    SCORES.select { |_, v| v.include?(char) }.keys.first
  end
end
