class FoodController < ApplicationController
  def index
    if params[:category_id].to_i > 0
      @category = Category.new.get_category(params[:category_id])
      if @category.parent_id != 0
        @parent_category = Category.new.get_category(@category.parent_id)
        @foods = Food.new.get_foods_by_category(params[:category_id],params[:page])
      else
        @child_categories = Category.new.get_child_categories(params[:category_id])
        @foods = Food.new.get_foods_by_parent_category(params[:category_id],params[:page])
      end
    else
      raise("not found")
    end
  end

  def show
    if params[:food_url]
      food_url = params[:food_url]
      food_url = food_url.split('-')
      food_id = food_url.last
      food_id = food_id.tr('p','')
      @categories = Category.new.get_parent_categories
      @food = Food.new.get_food_by_id(food_id)
      @category = Category.new.get_category(@food.category_id)
      @parent_category = Category.new.get_category(@category.parent_id)
      @best_sell_foods = Food.new.get_best_sell_foods(@food.category_id)
      @category_foods = Food.new.get_foods_same_category(@food)
    end
  end
end
