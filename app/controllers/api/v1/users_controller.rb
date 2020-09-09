class Api::V1::UsersController < ApplicationController

  def index
    users = User.all 
    render json: users 
  end

  def show
    user = User.find(params[:id])
    render json: user 
  end

  def new
    user = User.new 
    render json: user 
  end

  def create
    user = User.create(user_params)
    if user.valid?
    render json: user 
    else 
      render json: { error: 'Failed to create user'}
    end
  end

  private 

  def user_params
    params.require(:user).permit(:username, :password_digest)
  end 
end
