class Api::V1::FavoritesController < ApplicationController
  skip_before_action :authorized
  
  def index
    favorites = Favorite.all 
    render json: favorites, include: [:user, :breathing_technique]
  end

  def show
    favorite = Favorite.find(params[:id])
    render json: favorite 
  end

  def new
    favorite = Favorite.new 
    render json: favorite
  end

  def create
    favorite = Favorite.create(favorite_params)
    render json: favorite 
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
  end

  private 

  def favorite_params
    params.require(:favorite).permit(:user_id, :breathing_technique_id)
  end 
end
