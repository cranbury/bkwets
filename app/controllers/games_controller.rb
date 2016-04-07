class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    Game.create(game_params)

    redirect_to '/'
  end

  def edit
    @game = Game.find(params[:id])
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy

    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

  private
  def game_params
    params.require(:game).permit(:name, :address)
  end
end