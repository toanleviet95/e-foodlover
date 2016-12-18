class Category < ApplicationRecord
  has_many :foods
  def get_parent_categories
    Category.where(parent_id: 0).order(sort_order: :asc)
  end
  def get_child_categories(category_id)
    Category.where(parent_id: category_id).order(sort_order: :asc)
  end
  def get_category(category_id)
    Category.find(category_id)
  end
end
