require 'minitest/autorun'
require 'minitest/pride'
require './lib/deck'


class DeckTest < Minitest::Test
  def setup
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    card4 = Card.new(:club, '5', 5)
  end

  def test_it_exists
    assert_instance_of Deck, @deck
  end

  def test_it_has_a_rank
    assert_equal 12, @deck.rank_of_card_at(0)
  end

end
