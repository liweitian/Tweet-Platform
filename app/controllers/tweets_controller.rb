class TweetsController < ApplicationController

  def create
    @tweet = Tweet.new
    @tweet.user_id = params["user_id"]
    @tweet.content = params["message"]
    @tweet.time = Time.new.inspect
    if @tweet.save
      redirect_to "/users/#{@tweet.user_id}"
    else
      redirect_to "/users/:tweet.user_id", notice: "publish error!"
    end
  end

end
