class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :login_check

  def login_check
    if session[:id].blank? && request.env['omniauth.auth'].blank?
      flash[:notice] = 'cannot auth.'
      redirect_to root_path
    end
  end
end
