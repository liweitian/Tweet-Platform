class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to "/"
  end

  def new

  end

  def create
    user = User.find_by(account: params["account"])
    if user.present?
      if user.password == params["password"]
        session["user_id"] = user.id
        redirect_to "/users/#{user.id}", notice: "Welcome #{user.name}, this is your private space"
      else
        redirect_to "/signin", notice: "Nice try."
      end
    else
      redirect_to "/signin", notice: "Nice try."
    end
  end

end
