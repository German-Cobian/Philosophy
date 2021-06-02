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
      flash.now[:danger] = 'User does not exist!'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash.now[:success] = 'Logged out!'
    redirect_to root_path
  end
end
