class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


private
  def current_member
    Member.find_by(user_id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_member
end
