class Account < ApplicationRecord
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |account|
      account.provider = auth.provider
      account.email = auth.info.email
      account.role_id = 3
      account.uid = auth.uid
      account.name = auth.info.name
      account.token = auth.credentials.token
      account.status = true
      account.image_url = auth.info.image
      account.save!
    end
  end
end
