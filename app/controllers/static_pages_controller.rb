class StaticPagesController < ApplicationController
  def home
  	@cards = Card.all
  	@decks = Deck.all
  	@card = Card.new
  	@deck = Deck.new
  end
end
