require 'digest/sha1'
class User < ApplicationRecord
  def self.find_or_create_from_auth(auth)
    user = find_or_create_by(email: auth['info']['email']) do |u|
      u.provider = auth['provider']
      u.punch_token = generate_token(u.email)
    end
    User.find(user.id)
  end

  def self.generate_token(email)
    Digest::SHA1.hexdigest(Time.zone.now.strftime('%N') + email)
  end
end
