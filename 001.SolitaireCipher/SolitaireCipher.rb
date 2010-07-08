#!/usr/bin/ruby

class SolitaireCipher
  def Encrypt(plaintext)
# Convert lowerclass leters to upperclass
#  Disregard everything besides [A-Z]
# Break into groups of 5 chars and pad with X if needed
# Generate a keystream letter for each letter
# Convert each letter to it's number
# Do the same for the keystream letters
# Add if bigger then 26 subtract 26
# Convert numbers back to letters
  end

  def Decrypt(ciphertext)
# Generate keystream letters
# Convert ciphertext letters to numbers
# Convert the keystream letters to numbers
# Subtract keystream number from the message number. If the message number is <= keystream number then add 26 to message number
# convert numbers to letters
  end

  def GenerateKeystream
# Normally key the deck but we don't to make this testable
# Order the deck AC..KC, AD..KD, AH.. KH, AS..KS, Ajoker, Bjoker
# Move the Ajoker down one card
# Move the Bjoker down two cards (the deck is circular)
# Perform a triple cut arround the two jokers. All cards above the top joker move to below the bottom joker and vice versa. The jokers and the card between them do not move.
# Perform a count cut using the value of the bottom card. Cut the bottom card's value in cards of the top of the deck and reinsert them just below the bottom card.
# Convert the top card to it's value and count down that many cards from the top of the deck with the top card itself being a card number one. Look at the card after 
# the count. This is the next letter in the keystream. A joker doesn't generate a letter
# do this for each letter needed
#
  
  end


end

class Deck
  attr_accessor :cards

  def initialize
    @cards = [Card.new("C", "A"), Card.new("C", "2")]
  end
end

class Card
  attr_accessor :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def to_s
    @suit + @rank
  end

  def to_i
    addition = 0;
    case self.suit
    when "D"
      addition = 13
    when "H"
      addition = 26
    when "S"
      addition = 39
    end

    values = {
      "A" => 1,
      "J" => 11,
      "Q" => 12,
      "K" => 13,
      "J" => 53
    }
    if values.has_key?(self.rank)
      values[self.rank] + addition
    else
      self.rank + addition
    end
  end
end

deck = Deck.new
puts deck.cards[0].to_s

