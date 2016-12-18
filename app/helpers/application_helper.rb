module ApplicationHelper
  def login?
    session[:id].present?
  end
end
