class SessionsController < ApplicationController
  def new

  end

  def create
    email = request.env['omniauth.auth']['info']['email']
    provider = request.env['omniauth.auth']['provider']
  end
end
