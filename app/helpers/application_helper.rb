module ApplicationHelper
  def sale_off (price, promote_price)
    result = ((price - promote_price)*100)/price
    result.round
  end
  def self.is_number? string
    true if Float(string) rescue false
  end
  def self.check_email?(email)
    email.present? && (email =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
  end

  def self.check_phone?(phone)
    phone.present? && (phone =~ /^[0-9\-\+]{10,12}$/)
  end
end
