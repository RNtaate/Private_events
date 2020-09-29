class SessionsController < ApplicationController

  def create
    @user = User.find_by(name: params[:name])
    if @user
      session[:current_user_id] = @user.id
      redirect_to root_path
    else
      redirect_to :new_session
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_path
  end
end
