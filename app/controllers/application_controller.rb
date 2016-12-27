class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= Account.find_by(email: session[:email], role_id: session[:role_id]) if session[:email]
  end
end
