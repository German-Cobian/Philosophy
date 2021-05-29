class SessionsController < ApplicationController
  def new
    @session = @user
  end

  def create
    @user = User.find_by(name: params[:session][:name])

    if @user
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Logged in!'
    else
      flash.now.alert = 'User does not exist, Sign up Please!!!'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out!'
  end
end
