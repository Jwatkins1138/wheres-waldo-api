class Api::V1::ScoresController < ApplicationController
  before_action :set_score, only: [:show]

  def index
    @scores = Score.all 
    render json: @scores
  end

  def show 
    if @score
      render json: @score
    else
      render json: @score.errors
    end
  end

  def new

  end

  def create

  end

  private
  def set_score
    @score = Score.find(params[:id])
  end

end
