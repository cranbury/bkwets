class GamesController < ApplicationController
  def index
    @team  = Team.find(params[:team_id])
    @games = @team.games
  end

  def new
    @team  = Team.find(params[:team_id])
    @game = Game.new
  end

  def create
    @team  = Team.find(params[:team_id])
    @team.games.create(game_params)

    redirect_to team_games_url(@team)
  end

  def edit
    @team  = Team.find(params[:team_id])
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

  def coordinates
    render json: Team.find(params[:team_id]).games.map{|game| {"lat" => game.lat, "lng" => game.long}}.to_json
  end

  private
  def game_params
    params.require(:game).permit(:name, :address)
  end
end