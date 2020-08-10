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
    if omniauth = request.env['omniauth.auth']
      user = User.find_or_create_by(email: omniauth['info']['email']) do |u|
        u.username = omniauth['info']['email']
        u.password = SecureRandom.hex
      end
      session[:user_id] = user.id
      redirect_to posts_path
    else
      user = User.find_by(username: params[:username])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to posts_path
      else
        flash[:errors] = ["Incorrect Username or Password"]
        redirect_to login_path
      end
    end
  end

  # Logout
  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end
end
