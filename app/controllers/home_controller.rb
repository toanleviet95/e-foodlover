class HomeController < ApplicationController
  def index
    @sliders = Slider.new.get_sliders #Slider
    @categories = Category.new.get_parent_categories #Loại cha
    @partial_category_promotes = [] #Sản phẩm khuyến mãi
    @partial_best_sell_foods = [] #Sản phẩm món ngon trong ngày
    @child_categories = [] #Loại con
    @foods = Hash.new #Sản phẩm
    @today_foods = Food.new.get_today_foods #Sản phẩm trong mục ăn gì hôm nay
    index = 0
    #Duyệt vòng lặp loại cha để gán giá trị
    @categories.each do |category|
      @partial_category_promotes << Food.new.get_partial_category_promotes(category.id)
      @partial_best_sell_foods << Food.new.get_partial_today_foods(category.id)
      @child_categories << Category.new.get_child_categories(category.id)
      #Duyệt vòng lặp loại con để lấy sản phẩm trong từng loại con có trong loại cha
      i = 0
      @child_categories[index].each do |child_category|
        @foods[[index,i]] = Food.new.get_latest_foods(child_category.id)
        i = i + 1
      end
      index = index + 1
    end
  end
end
