class Deck
  attr_reader :cards

  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    @cards[index].rank
  end

  def high_ranking_cards
    high_rank = []
    cards.each do |cards|
      if cards.rank >= 11
        high_rank << cards
      end
    end
  end

  def percent_high_ranking
    cards.each do |card|
      if card.rank >= 11
        ( cards / card.sum )
      end
  end

  def remove_card
    deck.shift
  end

  def add_card
    deck.push
  end
end
end
