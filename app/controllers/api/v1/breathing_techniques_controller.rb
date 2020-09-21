class Api::V1::BreathingTechniquesController < ApplicationController

 

  def index
    breathing_techniques = BreathingTechnique.all 
    render json: breathing_techniques.to_json
  end

  def show
    breathing_technique = BreathingTechnique.find(params[:id])
    render json: breathing_technique
  end

  def new
    breathing_technique = BreathingTechnique.new 
    render json: breathing_technique
  end

  def create
    breathing_technique = BreathingTechnique.create(breathing_technique_params)
    render json: breathing_technique
  end

  private 

  def breathing_technique_params
    params.require(:breathing_technique).permit(:name, :step_one, :step_two, :step_three, :step_four)
  end 
end
