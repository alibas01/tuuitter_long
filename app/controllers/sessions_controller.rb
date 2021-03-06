class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      message = "Something went wrong! Please check your credentials!"
      redirect_to login_path, notice: message
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
