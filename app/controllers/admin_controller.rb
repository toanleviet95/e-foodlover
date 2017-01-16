class AdminController < ApplicationController
  layout 'admin'
  def index
    if !current_user
      redirect_to :root
    elsif current_user.role_id != 2
      redirect_to :root
    end
  end

  def foods
    if !current_user
      redirect_to :root
    elsif current_user.role_id != 2
      redirect_to :root
    else
      user = User.new.get_user_by_email(current_user.email)
      @foods = Food.new.get_foods_by_user(user.user_id)
    end
  end

  def invoices
    if !current_user
      redirect_to :root
    elsif current_user.role_id != 2
      redirect_to :root
    else
      @user = User.new.get_user_by_email(current_user.email)
      @invoices = Invoice.new.get_invoices_by_user(@user.user_id)
      @income = Income.new.get_income_by_user(@user.user_id)
    end
  end

  def accounts
    if !current_user
      redirect_to :root
    elsif current_user.role_id != 1
      redirect_to :root
    else
      @accounts = Account.new.get_accounts
    end
  end

  def foods_add
    if !current_user
      redirect_to :root
    elsif current_user.role_id != 2
      redirect_to :root
    else
      @food = Food.new
      user = User.new.get_user_by_email(current_user.email)
      @food.user_id = user.user_id
      @food.status = true
      categories = Category.new.get_all_child_categories
      @choose_categories = []
      categories.each do |category|
        item = [category.name,category.id]
        @choose_categories << item
      end
    end
  end

  def foods_edit
    if !current_user
      redirect_to :root
    elsif current_user.role_id != 2
      redirect_to :root
    else
      @food = Food.new.get_food_by_id(params[:food_id])
      user = User.new.get_user_by_email(current_user.email)
      categories = Category.new.get_all_child_categories
      @choose_categories = []
      categories.each do |category|
        item = [category.name,category.id]
        @choose_categories << item
      end
    end
  end
end