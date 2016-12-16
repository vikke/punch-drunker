json.extract! user, :id, :mail, :provider, :oauth_token, :punch_token, :created_at, :updated_at
json.url user_url(user, format: :json)