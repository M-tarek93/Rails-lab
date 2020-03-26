class UsersController < ApplicationController
  
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end
  
  def create
    p params
    if (params.require(:user)[:password] == params[:confirmPassword])
    @user = User.create(params.require(:user).permit(:name, :password))
    session[:user_id] = @user.id
    redirect_to '/welcome'
    else 
      redirect_back  fallback_location: @user, notice: 'Password and password confirmation don\'t match.'
    end
  end
    
end
