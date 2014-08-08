class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def require_login
  	unless session[:user_id]
  		redirect_to new_admin_session_path, alert: 'You must login to view this page'
  	end
  end
end
