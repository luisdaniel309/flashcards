class DecksController < ApplicationController
  
  def index
  	@decks = Deck.all 
  end

  def show
  	@deck = Deck.find(params[:id])
  	@cards = @deck.card.all
  	@card = @cards.first
  end

  def new
  	@deck = Deck.new
  end

  def create
  	@deck = Deck.new(deck_params)
  	if @deck.save
  		flash.now[:success] = "Deck created"
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end

  def destroy 
  	Deck.find(params[:id]).destroy
  	flash.now[:success] = "Deck destroyed"
  	redirect_to root_path
  end

  private

  	def deck_params
  		params.require(:deck).permit(:name)
  	end
  	

end
