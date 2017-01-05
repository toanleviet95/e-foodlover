module AccountHelper
  def self.check_date?(date)
    y, m, d = date.split '-'
    Date.valid_date? y.to_i, m.to_i, d.to_i
  end
end
