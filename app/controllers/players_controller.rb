class PlayersController < ApplicationController
  def index
  	if player_signed_in?
  		@player = current_player
  	end
  end

  def show
  end
end
