class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create]

  # Render a login form
  def new
    if logged_in?
      redirect_to posts_path
    end
  end

  # Login and redireect
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to posts_path
    else
      flash[:errors] = ["Incorrect Username or Password"]
      redirect_to login_path
    end
  end

  # Logout
  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end
end
