class FollowersController < ApplicationController

  	def create
    	f = Follower.new
    	f.user_id = params["user_id"]
    	f.following = params["following"]
    	if f.save
    	  redirect_to "/users/#{f.user_id}"
    	end
	end
end
