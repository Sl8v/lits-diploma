class User < ApplicationRecord

  devise :trackable, :omniauthable, :omniauth_providers => [:facebook, :vkontakte]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.name  = auth.info.name
    end
  end

end
