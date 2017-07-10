class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.authenticate(params[:user][:email], params[:user][:password])
    if @user
      flash[:notice] = "You've signed in."
      session[:user_id] = @user.id
      redirect_to "/"
    else
      @user = User.new
      @user.errors.add :email, 'Email or password incorrect'
      @user.errors.add :password, 'Email or password incorrect'
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've signed out."
    redirect_to "/"
  end
end
