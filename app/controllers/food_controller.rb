class FoodController < ApplicationController
  def index
    if params[:category_id].to_i > 0
      @category = Category.new.get_category(params[:category_id])
      if @category.parent_id != 0
        @parent_category = Category.new.get_category(@category.parent_id)
        @foods = Food.new.get_foods_by_category(params[:category_id],params[:page])
      else
        @child_categories = Category.new.get_child_categories(params[:category_id])
        @foods = Food.new.get_foods_by_parent_catgory(params[:category_id],params[:page])
      end
    else
      raise("not found")
    end
  end
end
