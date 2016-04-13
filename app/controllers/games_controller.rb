class GamesController < ApplicationController
  def index
    @team  = Team.find(params[:team_id])
  end

  def new
    @team = Team.find(params[:team_id])
    @game = Game.new
  end

  def show
    @team = Team.find(params[:team_id])
    @game = Game.find(params[:id])
  end

  def create
    @team = Team.find(params[:team_id])
    @team.games.create(game_params)

    redirect_to team_games_url(@team)
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    @team = Team.find(params[:team_id])

    render :index
  end

  def edit
    @team = Team.find(params[:team_id])
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
    game = Game.find(params[:id])
    render json: [{"lat" => game.lat, "lng" => game.long}].to_json
  end

  private
  def game_params
    params.require(:game).permit(:name, :address)
  end
end