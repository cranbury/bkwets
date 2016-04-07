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

  private
  def game_params
    params.require(:game).permit(:name, :address)
  end
end