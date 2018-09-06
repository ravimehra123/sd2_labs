class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user! 

  def logged_in?
		current_user.is_a? User
	end
	# Make logged_in? available in templates as a helper
	helper_method :logged_in?
end
