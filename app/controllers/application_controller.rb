class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :login_check

  helper_method :current_user

  def login_check
    if session[:id].blank? && request.env['omniauth.auth'].blank?
      flash[:notice] = 'cannot auth.'
      redirect_to root_path
    end
  end

  def current_user
    return nil if session[:id].blank?
    return User.find(session[:id])
  end
end
