require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require './lib/player'
require 'pry'

class PlayerTest < Minitest::Test

  def setup

    @card1 = Card.new(:diamond, 'Queen', 12)
    @card2 = Card.new(:spade, '3', 3)
    @card3 = Card.new(:heart, 'Ace', 14)
    @card4 = Card.new(:club, '5', 5)
    cards = [@card1, @card2, @card3]
    @deck = Deck.new(cards)
    @player = Player.new('Clarisa', @deck)
  end


  def test_it_has_name

    assert_equal 'Clarisa', @player.name
  end

  def test_it_has_deck

    assert_equal @deck, @player.deck
  end

  def test_it_has_lost

    assert_equal false, @player.has_lost?
  end

  def test_it_can_remove_card

    assert_equal @card1, @player.deck.remove_card
  end

  def test_it_has_lost_now

    assert_equal false, @player.has_lost?
  end


  def test_it_has_lost_finally

    3.times do
    @player.deck.remove_card
    end

    assert_equal true, @player.has_lost?
  end
end
