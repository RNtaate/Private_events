class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)

    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
