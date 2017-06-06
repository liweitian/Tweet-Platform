class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to "/"
  end

  def adminDestroy
    reset_session
    redirect_to "/"
  end

  def new
      if session["user_id"].present?
         user = User.find_by(id:session["user_id"])
         if user.present?
         redirect_to "/users/#{session["user_id"]}"
         end
      end
  end

  def create
    user = User.find_by(account: params["account"])
    if user.present?
      if user.password == params["password"]
        session["user_id"] = user.id
        redirect_to "/users/#{user.id}", notice: "Welcome #{user.name}, this is your space"
      else
        redirect_to "/signin", notice: "Nice try."
      end
    else
      redirect_to "/signin", notice: "Nice try."
    end
  end

  def adminNew
      if session["admin_id"].present?
         admin = Admin.find_by(id:session["admin_id"])
         if admin.present?
         redirect_to "/admin/#{session["admin_id"]}"
         end
      end
  end
  
  def adminCreate
      admin = Admin.find_by(account: params["account"])
    if admin.present?
      if admin.password == params["password"]
        session["admin"] = admin.id
        redirect_to "/admin/manage/1", notice: "Welcome"
      else
        redirect_to "/admin/signin", notice: "Nice try."
      end
    else
      redirect_to "/admin/signin", notice: "Nice try."
    end
  end
end
