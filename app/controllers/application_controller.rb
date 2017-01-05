class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= Account.find_by(email: cookies[:email], role_id: cookies[:role_id], provider: cookies[:provider]) if cookies[:email] and cookies[:provider]
  end

end
