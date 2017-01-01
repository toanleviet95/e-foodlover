module AccountHelper
  def self.check_email?(email)
    email.present? && (email =~ /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i)
  end

  def self.check_phone?(phone)
    phone.present? && (phone =~ /^[0-9\-\+]{10,12}$/)
  end

  def self.check_date?(date)
    y, m, d = date.split '-'
    Date.valid_date? y.to_i, m.to_i, d.to_i
  end
end
