class AuthorizationsController < ApplicationController
  def callback
    render json: auth_hash
  end

  def failure
    render json: { error: 'You haven\'t passed test successfully to access this site' }
  end

  alias :smart :callback

  protected

  def auth_hash
    @auth_hash ||= request.env['omniauth.auth']
  end
end
