class Api::V1::UsersController < ApplicationController
  wrap_parameters format: [:json, :xml, :url_encoded_form, :multipart_form]
  # skip_before_action :authorized, only: [:create]
  # before_action :authorized, only: [:stay_logged_in]

  def index
    users = User.all 
    render json: users 
  end

  def show
    user = User.find(params[:id])
    render json: user 
  end

  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token(user_id: user.id)
    render json: { user: UserSerializer.new(user), jwt: token}, status: :created
    else 
      render json: { message: "Failed to create user" }, status: :not_acceptable
    end
  end

  # def create
  #   user = User.create(user_params)
  #   if user.valid?
  #     token = encode_token({user_id: user.id})
  #   render json: { user: user, jwt: token}
  #   else 
  #     render :json => { message: "Failed to create user" }, status: :not_acceptable
  #   end
  # end

  # def profile
  #   render json: { user: UserSerializer.new(previously_logged_in_user) }, status: :accepted
  # end
  
  # def login 
  #   user = User.find_by(username: params[:username])

  #   if user && user.authenticate(params[:password])
  #     token = encode_token({ user_id: user.id })
  #     render json: { user: UserSerializer.new(user), token: token }
  #   else
  #     render json: { error: "Invalid username or password" }
  #   end
  # end

  # def stay_logged_in
  #   token = encode_token({ user_id: user.id }) 
  #   render json: { user: UserSerializer.new(user), token: token }
  # end

  private 

  def user_params
    params.permit(:username, :password)
  end 
end
