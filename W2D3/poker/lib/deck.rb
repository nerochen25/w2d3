require_relative "card"
# VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
# SUITS = %w(H C S D)

class Deck
  attr_reader :deck
  def initialize
    @deck = []
    populate
    # @card = Card.new(1,2)
  end

  def populate
    Card.suits.each do |suit|
      Card.values.each do |value|
        @deck << Card.new(value, suit)
      end
    end
    @deck
  end
  
  def shuffle!
    @deck.shuffle!
  end
  
end