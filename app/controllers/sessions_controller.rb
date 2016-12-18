class SessionsController < ApplicationController

  skip_before_action :login_check, only: :new

  def new
    if current_user.present?
      redirect_to punches_url
    end
  end

  def create
    user = User.find_or_create_from_auth(request.env['omniauth.auth'])
    session[:id] = user.id
    redirect_to :punches
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end
