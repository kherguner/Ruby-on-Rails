class UsersController < ApplicationController

  def login
    @user = User.new
  end

  def create
    @user = User.find_by(username: user_params[:username].downcase)
    @pas = User.find_by(password: user_params[:password].downcase)
    if @user && @pas
      session[:user_id] = @user.id
      flash[:success] = "You Signed Up woo!"
      redirect_to '/pages/authenticate'
    else
      flash[:danger] = "There was an error try again!"
      render :login
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_url
  end


  def user_params
    params.require(:user).permit(:username, :password)
  end


end
