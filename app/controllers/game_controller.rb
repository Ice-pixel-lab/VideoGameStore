class GameController < ApplicationController
  def index
    @games = Game.includes(:genre).page params[:page]
  end

  def show
    @game = Game.find(params[:id])
  end
end
