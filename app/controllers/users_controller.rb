class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params["id"])
    if @user.id != session["user_id"]
      redirect_to "/", "please signin"
    end
  end

  def edit
      @user = User.find_by(id: params["id"])
  end

  def all
      @thisUser = User.find_by(id: params["id"])
      @otherUsers = User.where.not(id:  params["id"])
  end

  def create
    @user = User.new
    @user.name = params["name"]
    @user.password = params["password"]
    @user.account = params["account"]
    @user.gender = params["gender"]
    if @user.save
      redirect_to "/user/:user_id", notice: "Welcome #{user.name}, this is your private space"
    else
      render 'signup'
    end
  end

  def update
    user = User.find_by(id: params["id"])
    user.password = params["password"]
    user.save
    redirect_to "/users/#{user.id}"
  end


  def space
      @user = User.find_by(id: params["id"])
  end
end
