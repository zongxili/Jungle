class UsersController < ApplicationController

  def new
  end
  
  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      # redirect_to '/signup', :flash => {:error => "different password"}
      # flash.now[:error] = "alert for password"
      redirect_to '/signup', :flash => { :error => "Insufficient rights!" }
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :password_confirmation)
  end

end