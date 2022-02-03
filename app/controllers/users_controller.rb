class UsersController < ApplicationController
  
  def new
  end
  
  # Create user method
  def create
    user = User.new(user_params)
    # If user successfully created, new session is made and redirected to landing page
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      # If user was not successfully created, redirected back to signup page
      redirect_to '/registration'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
