require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'
require './lib/card'
require 'pry'

class DeckTest < Minitest::Test

  def setup
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:club, '5', 5)
    @cards = [@card1, @card2, @card3]
    @deck = Deck.new(@cards)
  end


  def test_it_exists
    deck = @deck
 
    assert_instance_of Deck, @deck
  end

  def test_it_has_a_rank
    deck = @deck
    assert_equal 12, @deck.rank_of_card_at(0)
    assert_equal 14, @deck.rank_of_card_at(2)
  end

  def test_its_high_ranking
skip
    assert_equal 2, high_rank.count == 2
  end

  def test_percent_high_ranking
    skip
    assert_equal 66.67, @deck.percent_high_ranking
  end
end
