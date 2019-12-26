class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def show
  end

  def new
  end

  def create
    @tweet = Tweet.new
        @tweet.content = params[:tweet][:content]
        @tweet.save
        redirect_to root_path
  end

  private
  def tweet_params
    params.require(:tweet).permit(:video)
  end

end
