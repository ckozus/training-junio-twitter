class TweetsController < ApplicationController
  before_action :authenticate_user!

  def new
    @tweet = current_user.tweets.build
  end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to root_path, notice: 'El tweet fue publicado!'
    else
      render :new
    end
  end

protected

  def tweet_params
    params.require(:tweet).permit(:message)
  end

end
