require './lib/card'
require './lib/deck'
require './lib/player'
require 'pry'



class Turn
  attr_reader :player1,
              :player2,
              :spoils_of_war,
              :type


  def initialize(player1, player2)
      @player1 = player1
      @player2 = player2
      @spoils_of_war = []
      @type = turn_type

  end

  def turn_type
    if @player1.deck.cards[0].rank != @player2.deck.cards[0].rank
      @type = :basic
    elsif @player1.deck.cards[0].rank == @player2.deck.cards[0].rank
      @type = :war
    else @player1.deck.cards[0].rank == @player2.deck.cards[0].rank && @player1.deck.cards[2].rank == @player2.deck.cards[2].rank.rank
      @type = :mutually_assured_destruction
    end
  end

  def winner
    if @type == :basic
      if @player1.deck.cards[0].rank > @player2.deck.cards[0].rank
        return @player1
      else
        return @player2
      end
    elsif @type == :war
      if @player1.deck.cards[2].rank > @player2.deck.cards[2].rank
        return @player1
      else
        return @player2
      end
    else @type == :mutually_assured_destruction
      return "No Winner"
    end
  end

  def pile_cards
    if :basic then
      @spoils_of_war << @player1.deck.cards.shift
      @spoils_of_war << @player2.deck.cards.shift
    elsif :war
      @spoils_of_war << @player1.deck.cards.slice(0..2)
      @spoils_of_war << @player2.deck.cards.slice(0..2)
      @spoils_of_war.flatten!
    elsif :mutually_assured_destruction
      @player1.deck.cards.slice(0..2)
      @player2.deck.cards.slice(0..2)
    end
  end

  def award_spoils(winner)
    @spoils_of_war.each do |card|
      winner.deck.cards << card
      winner.deck.cards.flatten!
    @spolis_of_war = []
    end
  end

end
