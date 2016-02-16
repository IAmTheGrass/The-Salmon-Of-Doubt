class GamesController < ApplicationController

	def show
		@game = Game.find(params[:id])
	end

	def new
    	@game = Game.new
  	end

  	def orphan
		@games = Game.all
		@game = Game.create(customer_params)
	end


  	def create
  		@game = Game.new(params[:game].permit(:one, :two, :three, :peice))
  		if @game.save
  			redirect_to @game
  		else
  			flash.now[:notice] = "invalid input"
  			render :new
  		end
  	end

	def move

  	respond_to do |format|
  		@divVar = params[:data]
    	format.js
		end        
	end

	def customer_params
		params.require(:game).permit(:one, :two, :three, :peice)
	end

end
