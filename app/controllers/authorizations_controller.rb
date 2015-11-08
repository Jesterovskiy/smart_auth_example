class AuthorizationsController < ApplicationController
  def callback
    render json: auth_hash
  end

  alias :smart :callback

  protected

  def auth_hash
    @auth_hash ||= request.env['omniauth.auth']
  end
end
