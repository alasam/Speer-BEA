class ApplicationController < ActionController::Base

  # Define current user
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  # Sends user to login page if a session isn't active
  def authorize
    redirect_to '/login' unless current_user
  end

end
