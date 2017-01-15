class AdminController < ApplicationController
  layout 'admin'
  def index
    if !current_user
      redirect_to '/trang-chu'
    elsif current_user.role_id != 2
      redirect_to '/trang-chu'
    end
  end
end