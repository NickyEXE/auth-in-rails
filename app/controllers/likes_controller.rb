class LikesController < ApplicationController

  def create
    like = @current_user.likes.create(like_params)
    redirect_to like.post
  end

  def like_params
    params.require(:like).permit(:post_id)
  end
end
