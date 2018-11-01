class Card
  VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
  SUITS = %w(H C S D)
  attr_reader :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit
  end
  
  def valid_card?
    if VALUES.include?(@value) && SUITS.include?(@suit)
      return true
    else
      #exception, raise error, retry
      return false
    end
  end
  
  def self.values
    VALUES
  end
  
  def self.suits
    SUITS
  end
  
end

