class Api::V1::AuthController < ApplicationController
skip_before_action :authorized, only: [:create]
 
#login method
  def create
    @user = User.find_by(username: user_login_params[:username])
    #user.authenticate comes from bcrypt
    if @user && @user.authenticate(user_login_params[:password])
      # encode token comes from application controller
      token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { error: 'Incorrect username or password' }, status: :unauthorized
    end
  end
 
  private
 
  def user_login_params
    params.require(:user).permit(:username, :password)
  end
end
