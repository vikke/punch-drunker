class User < ApplicationRecord
  def self.find_or_create_from_auth(auth)
    user = find_or_create_by(email: auth['info']['email']) do |u|
      u.provider = auth['provider']
    end
  end
end
