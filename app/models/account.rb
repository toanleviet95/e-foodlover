class Account < ApplicationRecord
  belongs_to :user, foreign_key: "email", class_name: "User"
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid, role_id: 3).first_or_initialize.tap do |account|
      account.provider = auth.provider
      account.role_id = 3
      account.uid = auth.uid
      account.name = auth.info.name
      account.token = auth.credentials.token
      account.status = true
      account.image_url = auth.info.image
      account.save
    end
  end
end
