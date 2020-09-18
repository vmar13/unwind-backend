class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  # def index
  #   users = User.all 
  #   render json: users 
  # end

  # def show
  #   user = User.find(params[:id])
  #   render json: user 
  # end

  # def new
  #   user = User.new 
  #   render json: user 
  # end

  def create
    user = User.create(user_params)
    if user.valid?
      payload = {user_id: user.id}
      token = encode_token(payload)
    render json: { user: user, jwt: token }
    else 
      render json: { error: user.error.full_messages }, status: :not acceptable
    end
  end

  def login 
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password_digest])
      token = encode_token({ user_id: user.id })
      render json: { user: user, token: token }
    else
      render json: { error: 'Invalid username or password' }
    end
  end

  def auto_login 
    render json: user
  end

  private 

  def user_params
    params.permit(:username, :password)
  end 
end
