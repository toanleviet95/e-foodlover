class AccountController < ApplicationController
  def index

  end

  def create_client_auth
    auth = env["omniauth.auth"]
    account = Account.from_omniauth(auth)
    User.new.create_client(auth)
    session[:email] = account.email
    session[:role_id] = account.role_id
    redirect_to root_path
  end

  def destroy
    session[:email] = nil
    redirect_to root_path
  end
end
