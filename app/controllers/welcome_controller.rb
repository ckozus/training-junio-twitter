class WelcomeController < ApplicationController

  def index
    @tweets = Tweet.order(created_at: :desc).all
  end

end
