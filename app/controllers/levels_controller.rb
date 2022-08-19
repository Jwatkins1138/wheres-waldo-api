class LevelsController < ApplicationController

  def index
    @levels = Level.all
    @scores = Score.all.order("seconds ASC")
  end


end
