class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.page(params[:page]).reverse_order
  end

  def show
  end

  def new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:user_id, :content)
  end

end
