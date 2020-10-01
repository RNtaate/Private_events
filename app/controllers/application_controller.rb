class ApplicationController < ActionController::Base
  helper_method :current_user
  def current_user
    User.find_by(id: session[:current_user_id])
  end

  helper_method :signed_in?
  def signed_in?
    !current_user.nil?
  end
end
