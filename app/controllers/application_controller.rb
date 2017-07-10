class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :is_admin?

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def authorize
    if !current_user
      flash[:alert] = "You aren't authorized to visit that page."
      redirect_to '/'
    end
  end

  def authorize_admin
    if !is_admin?
      flash[:alert] = "You need to be admin to perform this action!"
      redirect_to '/'
    end
  end


  def is_admin?
    current_user != nil && current_user.is_admin?
  end

end
