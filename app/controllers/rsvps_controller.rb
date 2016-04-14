class RsvpsController < ApplicationController
  def create
    @rsvp = Game.find(params[:game_id]).rsvps.build(rsvp_params)

    if @rsvp.save
      render json: @rsvp, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  def rsvp_params
    params.require(:rsvp).permit(:name, :email)
  end
end