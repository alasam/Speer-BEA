class TweetsController < ApplicationController

  # Lists all tweets
  def index
    @tweets = Tweet.all
  end

  # Shows tweet by ID
  def show
    @tweet = Tweet.find(params[:id])
  end

  # New Tweet
  def new
    @tweet = Tweet.new
  end

  # Must have an active session to use methods below
  before_action :authorize

  # Edit existing tweet using ID
  def edit
    @tweet = Tweet.find(params[:id])
  end

  # Create new tweet
  def create
    @tweet = Tweet.new(tweet_params)
   
    if @tweet.save
      redirect_to "/tweets"
    else
      redirect_to "/tweets"
    end
  end
   
  # Update existing tweet
  def update
    @tweet = Tweet.find(params[:id])
   
    if @tweet.update(tweet_params)
      redirect_to "/tweets"
    else
      render "edit"
    end
  end

  # Delete existing tweet
  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
   
    redirect_to tweet_path
  end

  private
    def tweet_params
      params.require(:tweet).permit(:post)
    end

end
