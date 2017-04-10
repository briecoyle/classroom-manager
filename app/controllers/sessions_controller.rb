class SessionsController < ApplicationController
  def create
    user = User.find_or_create_by(uid: auth['uid']) do |u|
      name = auth['info']['name']
      u.first_name = name.split(" ").first
      u.last_name = name.split(" ").last
      u.email = auth['info']['email']
    end
    session[:user_id] = user.id
    redirect_to users_path
    auth
  end

  private
  def auth
    @auth = request.env['omniauth.auth']
  end
end
