class GamesController < ApplicationController
  def new
    @letters = []
    10.times do
      @letters << ('a'..'z').to_a.sample
    end
  end

  def score
    @score = params[:word]
    if @score.length >= 8
      @responce = "You win"
    else
      @responce = "loser"
    end
  end
end
