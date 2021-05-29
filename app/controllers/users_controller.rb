class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # if signed up succesfully:
      redirect_to signin_path
    else
      # if could not sign up
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
