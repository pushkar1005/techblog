class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
  include UsersHelper


  def logged_in_user
  	unless logged_in?
  		flash[:danger] = "Please log in."
  		redirect_to root_path
  	end
  end

end
