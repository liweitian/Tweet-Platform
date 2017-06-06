class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params["id"])
    if @user.id != session["user_id"]
      redirect_to "/", notice: "please signin"
    end
  end

  def profile
    @user = User.find_by(id: params["id"])
    if @user.id != session["user_id"]
      redirect_to "/signin", notice: "please signin"
    end
  end


  def edit
      @user = User.find_by(id: params["id"])
  end

  def index
      @user = User.find_by(id: params["id"])
      @other_users = User.where.not(id:  params["id"])
  end

  def create
    @user = User.new
    @user.name = params["name"]
    @user.password = params["password"]
    @user.account = params["account"]
    @user.gender = params["gender"]
    if @user.save
      redirect_to "/", notice: "please signin"
    end
  end

  def update
    user = User.find_by(id: params["id"])
    user.password = params["password"]
    user.account = params["account"]
    user.name = params["name"]
    user.introduction = params["introduction"]
    user.headPhoto = params["headphoto"]
    user.save
    redirect_to "/users/#{user.id}"
  end


  def space
       @user = User.find_by(id: params["id"])
       if @user.id != session["user_id"]
            redirect_to "/signin"
       end
  end
end
