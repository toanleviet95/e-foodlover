module ApplicationHelper
  def sale_off (price, promote_price)
    result = ((price - promote_price)*100)/price
    result.floor
  end
end
