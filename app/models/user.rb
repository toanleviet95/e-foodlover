class User < ApplicationRecord
  has_many :accounts, foreign_key: "email", class_name: "Account"
  has_many :foods
  has_many :invoices
  def create_client (auth)
    if User.exists?(:email => auth.info.email)
      user = User.find_by(email: auth.info.email)
      if user.fullname == nil and auth.info.name
        user.fullname = auth.info.name
        if user.gender == nil and auth.extra.raw_info.gender
          if auth.extra.raw_info.gender == 'male'
            user.gender = true
          else
            user.gender = false
          end
          if user.date_of_birth == nil and auth.extra.raw_info.birthday
            user.date_of_birth = auth.extra.raw_info.birthday
          end
        end
        user.save!
      end
    else
      User.create(fullname: auth.info.name, email: auth.info.email)
    end
  end

end

