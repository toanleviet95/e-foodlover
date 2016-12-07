class Food < ApplicationRecord
  belongs_to :category
  def get_partial_category_promotes(category_id)
    Food.joins(:category).where('parent_id = ? and promote_price > 0',category_id).last(4)
  end
  def get_latest_foods(child_category_id)
    Food.where(category_id: child_category_id, status: true).last(6)
  end
  def get_today_foods
    Food.last(12)
  end

end
