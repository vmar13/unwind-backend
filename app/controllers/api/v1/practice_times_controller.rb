class PracticeTimesController < ApplicationController
  def index
    practice_times = PracticeTime.all 
    render json: practice_times
  end

  def show
    practice_time = PracticeTime.find(params[:id]) 
    render json: practice_time
  end

  def new
    practice_time = PracticeTime.new 
    render json: practice_time
  end

  def create
    practice_time = PracticeTime.create(practice_time_params)
    render json: practice_time
  end

  def edit
    practice_time = PracticeTime.find(params[:id])
    render json: practice_time
  end

  def update
    practice_time = PracticeTime.update(practice_time_params)
    render json: practice_time
  end

  def destroy
    practice_time = PracticeTime.find(params[:id])
    practice_time.destroy 
  end

  private 

  def practice_time_params 
    params.require(:practice_time).permit(:date, :time, :favorite_id)
  end 
end
