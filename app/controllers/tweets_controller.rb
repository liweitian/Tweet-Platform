class TweetsController < ApplicationController

  def create
    @tweet = Tweet.new
    @tweet.user_id = params["user_id"]
    @tweet.content = params["message"]
    @tweet.time = Time.new.strftime("%m-%d")
    if @tweet.save
      redirect_to "/users/#{@tweet.user_id}"
    else
      redirect_to "/users/:tweet.user_id", notice: "publish error!"
    end
  end

  def index
      @page_index = params["page"].to_i
      count = Tweet.where(user_id: params["id"]).count
      @page_number = count/3
      puts @page_number
      @tweets = Tweet.where(user_id: params["id"]).limit(3).offset(3*@page_index)
      @user = User.find_by(id: params["id"])
      
  end

   def destroy
    t = Tweet.find_by(id: params["id"])
    t.delete
    if session["user_id"].present?
         user = User.find_by(id:session["user_id"])
         if user.present?
          redirect_to "/tweets/#{session["user_id"]}"
         else
          redirect_to "/signin"   
         end
    else
        redirect_to "/signin"     
    end
  end

end
