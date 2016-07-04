class FollowingsController < ApplicationController

  def create
    following = current_user.followings.build(followee_id: params[:followee_id])
    if following.save
      redirect_to following.followee, notice: "Sigues a un nuevo usuario"
    else
      redirect_to following.followee, alert: "Error al seguir"
    end
  end

end
