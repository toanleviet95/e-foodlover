class Income < ApplicationRecord
  belongs_to :user

  def get_income_by_user(user_id)
    Income.find_by(user_id: user_id)
  end
end
