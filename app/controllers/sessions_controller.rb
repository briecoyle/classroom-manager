class SessionsController < ApplicationController

  def create_from_twitter
    @user = User.find_or_create_by(uid: auth['uid'])
    name = auth['info']['name']
    @user.first_name = name.split(" ").first
    @user.last_name = name.split(" ").last
    @user.email = auth['info']['email']
    @user.save
    session[:user_id] = @user.id
    redirect_to users_path
  end

  private
  def auth
    @auth = request.env['omniauth.auth']
  end
end
