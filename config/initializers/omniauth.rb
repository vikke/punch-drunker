Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["CLIENT_ID"], ENV["SECRET_ID"],
    {
      scope: 'email',
      prompt: 'select_account',
    }
end
