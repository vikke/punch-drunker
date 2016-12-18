module ApplicationHelper
  def current_user
    return nil if session[:id].blank?
    return User.find(session[:id])
  end
end
