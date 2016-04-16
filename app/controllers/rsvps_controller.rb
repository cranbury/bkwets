class RsvpsController < ApplicationController
  def create
    @rsvp = Game.find(params[:game_id]).rsvps.build(rsvp_params)

    if @rsvp.save
      render json: @rsvp, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @rsvp = Rsvp.find(params[:id])
    @rsvp.destroy

    respond_to do |format|
      format.html { redirect_to games_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

  private
  def rsvp_params
    params.require(:rsvp).permit(:name, :email, :phone_number)
  end
end