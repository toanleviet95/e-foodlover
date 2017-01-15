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
      raise('page not found')
    end
  end

  def show
    if params[:food_url]
      food_url = params[:food_url]
      food_url = food_url.split('-')
      food_id = food_url.last
      food_id = food_id.tr('p','')
      if food_id.to_i > 0
        @categories = Category.new.get_parent_categories
        @food = Food.new.get_food_by_id(food_id)
        @category = Category.new.get_category(@food.category_id)
        @parent_category = Category.new.get_category(@category.parent_id)
        @best_sell_foods = Food.new.get_best_sell_foods(@food.category_id)
        @category_foods = Food.new.get_foods_same_category(@food)
      else
        raise('page not found')
      end
    end
  end

  def create
    food = Food.new(food_params)
    if food.save
      redirect_to '/admin/thanh-vien/quan-ly-mon-an', notice: "Đăng món ăn thành công"
    else
      redirect_to '/admin/thanh-vien/quan-ly-mon-an/them', alert: "Không đăng được món ăn"
    end
  end

  def edit
    food = Food.new.get_food_by_id(params[:food_id])
    if food.update_attributes(food_params)
      redirect_to '/admin/thanh-vien/quan-ly-mon-an/cap-nhat/'+params[:food_id], notice: "Cập nhật thành công"
    else
      redirect_to '/admin/thanh-vien/quan-ly-mon-an/cap-nhat/'+params[:food_id], alert: "Không cập nhật được món ăn"
    end
  end

  def edit_status
    food = Food.new.get_food_by_id(params[:food_id])
    if food.update_attributes(status: params[:status])
      respond_to do |format|
        response = { :status => "200", :message => "success" }
        format.json  { render :json => response }
      end
    else
      respond_to do |format|
        response = { :status => "501", :message => "fail" }
        format.json  { render :json => response }
      end
    end
  end

  def delete
    food = Food.new.get_food_by_id(params[:food_id])
    if food.destroy
      respond_to do |format|
        response = { :status => "200", :message => "success" }
        format.json  { render :json => response }
      end
    else
      respond_to do |format|
        response = { :status => "501", :message => "fail" }
        format.json  { render :json => response }
      end
    end
  end

  private
  def food_params
    params.require(:food).permit(:name, :price, :summary, :feature, :detail, :promote_price, :stock_qty, :category_id, :image_url_1, :image_url_2, :image_url_3, :status, :user_id, :url)
  end
end
