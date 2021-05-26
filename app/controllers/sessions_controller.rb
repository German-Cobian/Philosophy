class SessionsController < ApplicationController

  def new
    @session = @user
  end

  # rubocop:disable Style/SafeNavigation
  def create
    @user = User.find_by(name: params[:session][:name])

    if @user 
      session[:user_id] = @user.id
      flash[:notice] = "Welcome! #{@user.name}, you have signed in sucessfully"
      redirect_to root_path
    else
      flash.now[:alert] = 'User does not exist, Sign up Please!!!'
      render :new
    end
  end
  # rubocop:enable Style/SafeNavigation
end
