class CommentsController < ApplicationController

  	def create
    	c = Comment.new
    	c.from = params["from"]
    	c.to = params["to"]
    	c.content = params["content"]
    	if c.save
    	  redirect_to "/users/"+c.from
    	end
	end
end
