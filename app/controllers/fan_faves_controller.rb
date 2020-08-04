class FanFavesController < ApplicationController

  def create
    @fan_fave = @user.fan_faves.create(fan_fave_params)
    redirect_to @fan_fave.character
  end

  private

  def fan_fave_params
    params.require(:fan_fave).permit(:content, :character_id)
  end
end
