class Food < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :invoices
  mount_uploader :image_url_1, Image1Uploader
  mount_uploader :image_url_2, Image2Uploader
  mount_uploader :image_url_3, Image3Uploader
  self.per_page = 12
  def get_partial_category_promotes(category_id)
    Food.joins(:category).where('parent_id = ? and promote_price > 0',category_id).last(4)
  end

  def get_latest_foods(child_category_id)
    Food.where(category_id: child_category_id, status: true).last(6)
  end

  def get_today_foods
    Food.last(12)
  end

  def get_partial_today_foods(parent_id)
    Food.joins(:category).where(:categories => {:parent_id => parent_id}).last(2)
  end

  def get_foods_by_category(category_id, page)
    Food.where(category_id: category_id).order(food_id: :desc).paginate(:page => page)
  end

  def get_foods_by_parent_category(parent_id, page)
    Food.joins(:category).where(:categories => {:parent_id => parent_id}).order(food_id: :desc).paginate(:page => page)
  end

  def get_foods_by_name(name, page)
    Food.where('name LIKE ?' , "%#{name}%").order(food_id: :desc).paginate(:page => page)
  end

  def get_food_by_id(id)
    Food.find(id)
  end

  def get_foods_same_category(food)
    Food.where('food_id <> ? and category_id = ?',food.food_id,food.category_id).last(12)
  end

  def get_best_sell_foods(category_id)
    Food.where(category_id: category_id).last(3)
  end

  def get_foods_by_user(user_id)
    Food.where(user_id: user_id).order(food_id: :desc)
  end
end
