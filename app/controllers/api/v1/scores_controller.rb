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
    @score = Score.new
  end

  def create
    @score = Score.new(score_params)

    if @score.save
      render json: @score
    else
      render json: @score.errors
    end
  end

  private
  def set_score
    @score = Score.find(params[:id])
  end

  def score_parms
    params.permit(:player, :seconds, :level_id)
  end

end
