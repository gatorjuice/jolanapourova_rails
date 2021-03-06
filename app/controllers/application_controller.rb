class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate_admin!
    unless current_user && current_user.admin
      flash[:warning] = "You must be signed in as an Administrator to use this function"
      redirect_to '/paintings'
    end
  end
end
