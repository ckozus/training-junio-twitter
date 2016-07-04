class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      @tweets = Tweet.where(user_id: current_user.followees + [current_user]).order(created_at: :desc).all
    else
      @tweets = Tweet.order(created_at: :desc).all
    end
  end

end
