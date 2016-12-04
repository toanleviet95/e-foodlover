class HomeController < ApplicationController
  def index
    @categories = Category.order(sort_order: :asc).all
  end
end
