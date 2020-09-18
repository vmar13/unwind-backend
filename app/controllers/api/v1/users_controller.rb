class Api::V1::UsersController < ApplicationController
  before_action :authorized, only: [:stay_logged_in]

  def index
    users = User.all 
    render json: users 
  end

  def show
    user = User.find(params[:id])
    render json: user, include: '**' 
  end

  # def new
  #   user = User.new 
  #   render json: user 
  # end

  def create
    user = User.create(user_params)
    if user.valid?
      payload = {user_id: user.id}
      token = encode_token(payload)
    render json: { user: UserSerializer.new(user), token: token }
    else 
      render json: { error: 'Invalid username or password.' }
    end
  end

  def login 
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      token = encode_token({ user_id: user.id })
      render json: { user: UserSerializer.new(user), token: token }
    else
      render json: { error: 'Invalid username or password' }
    end
  end

  def stay_logged_in
    token = encode_token({ user_id: user.id }) 
    render json: { user: UserSerializer.new(@user), token: wristband }
  end

  private 

  def user_params
    params.permit(:username, :password)
  end 
end
