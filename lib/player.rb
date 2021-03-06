require './lib/card'
require './lib/deck'
require 'pry'

class Player
  attr_reader :name, :deck

  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def has_lost?
    if @deck.cards == []
      true
    else
      false
    end
  end

  def remove_card
    deck.shift
  end

end
