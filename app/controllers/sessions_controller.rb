class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email:"a@gmail.com")
      session[:user_id] = user.id
      redirect_to user_path(user.id)
  end
end
