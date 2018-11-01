require_relative 'deck'

class Hand
  attr_reader :hand
  def initialize
    @hand = []
    @deck = Deck.new().shuffle!
    #take_card(5)
  end
  
  def take_card(num)
    num.times do
      @hand << @deck.pop
    end
    @hand
  end
end
