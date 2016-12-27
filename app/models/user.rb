class User < ApplicationRecord
  def create_client (auth)
    if User.exists?(:email => auth.info.email)
      user = User.find_by(email: auth.info.email)
      if user.fullname == nil
        user.fullname = auth.info.name
        user.save!
      end
    else
      User.create(fullname: auth.info.name, email: auth.info.email)
    end
  end
end
