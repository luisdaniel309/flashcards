class CardsController < ApplicationController
  
  def index
  	@cards = Card.all
  end

  def show
  	@card = Card.find(params[:id])
  end

  def new
  	@card = Card.new
  end

  def create
  	@card = Card.new(card_params)
  	if @card.save
		flash[:success] = "Welcome to the Sample App!"
		redirect_to root_path
	else
		render 'new'
  	end
  end

  def destroy 
  	Card.find(params[:id]).destroy
  	flash.now[:sucess] = "Card deleted"
  	redirect_to root_path
  end

  private

    def card_params
      params.require(:card).permit(:front, :back, :deck_id,
                                   :tag_id)
    end
end
