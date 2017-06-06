class FollowersController < ApplicationController

  	def create
    	f = Follower.new
    	f.user_id = params["user_id"]
    	f.following = params["following"]
    	if f.save
    	  redirect_to "/users/#{f.user_id}"
    	end
	end

	def index
		@user = User.find_by(id: params["id"])
        @other_users = User.where.not(id:  params["id"])
	end

end
