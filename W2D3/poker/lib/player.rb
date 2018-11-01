require_relative 'deck'
require_relative 'hand'

class Player
  
  attr_reader :name, :pot, :hand
  
  def initialize(name, pot)
    @name = name
    @pot = pot
    @hand = []
    @deck = Deck.new
  end
  
  
end
