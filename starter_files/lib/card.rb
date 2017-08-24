require 'pry'
class Card
  RANKS = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  attr_reader :suit, :rank

  def greater_than?(card)
    value > card.value
  end

  # def self.ranks
  #   # [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
  # end

  def ==(card)
    self.suit == card.suit && self.rank == card.rank
  end

  def value
    RANKS.index(self.rank)
  end

end
