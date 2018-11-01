require 'rspec'
require 'card'
require 'spec_helper'
require 'deck'
# require 'hand'
# require 'player'
# require 'game'

RSpec.describe Card do
  # before(:each) {Card.new("A", "spade")}
  describe "#initialize" do
    let(:card) {Card.new("A", "S")}
    it "assignes the card a suit and value" do
      #or card = Card.new("A", "spade")
      expect(card.value).to eq("A")
      expect(card.suit).to eq("S")
    end
  end
  
  describe "#valid_card?" do
    let(:card) {Card.new("A", "S")}
    let(:card2) {Card.new("A", "spade")}

    it "checks if the card is valid" do
      expect(card.valid_card?).to be true
      expect(card2.valid_card?).to be false
    end
    
  end
end

RSpec.describe Deck do
  describe "#initialize" do
    let(:poker) {Deck.new()}
    it "checks if the deck is empty" do
      expect(poker.deck).to eq([])
    end
  end
  
  describe "#populate" do
    let(:poker) {Deck.new()}
    it "checks if the deck has no duplicated cards" do
      expect(poker.deck.uniq).to eq(poker.deck)
    end
    
    it "checks if the deck has 52 unique cards" do
      expect(poker.deck.length).to eq(52)
    end
  end
end

Rspec.describe Player do
  describe "#initialize" do
    let(:player) { Player.new("Gabe", 1_000) }
    it "checks if player has name and amount of money" do
      expect(player.name).to eq("Gabe")
      expect(player.pot).to eq(1_000)
    end
  end
  
  describe "#deal" do
    let(:player) { Player.new("Gabe", 1_000) }
    it "checks if the hand has 5 unique cards" do
      expect(player.name).to eq("Gabe")
      expect(player.pot).to eq(1_000)
    end
  end
end