class AuthorizationsController < ApplicationController
  def callback
    render json: auth_hash
    #user = User.find_or_create_by(
    #  login: auth_hash['info']['nickname'],
    #  email: auth_hash['info']['email']
    #)
    #session[:user_id] = user.id
    #redirect_to session[:redirect_uri] || root_path
  end

  alias :smart :callback

  protected

  def auth_hash
    @auth_hash ||= request.env['omniauth.auth']
  end
end
