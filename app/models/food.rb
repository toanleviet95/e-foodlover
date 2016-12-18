class Food < ApplicationRecord
  belongs_to :category
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
  def get_foods_by_category(category_id, page)
    Food.where(category_id: category_id).paginate(:page => page)
  end
  def get_foods_by_parent_catgory(parent_id, page)
    Food.joins(:category).where(:categories => {:parent_id => parent_id}).paginate(:page => page)
  end
  def get_foods_by_name(name, page)
    Food.where('name LIKE ?' , "%#{name}%").paginate(:page => page)
  end
end
