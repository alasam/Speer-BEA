class SessionsController < ApplicationController

  # Create user session
  def create
    # Find account by username
    user = User.find_by_username(params[:username])

    # If username is found and password matches session is created
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'

    # If account isnt found or password is incorrect, redirect back to login screen
    else
      redirect_to '/login'
    end
  end
  
  # Logout/Destroy user session
  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
