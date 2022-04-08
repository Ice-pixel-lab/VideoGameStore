class GameController < ApplicationController
  def index
    @games = Game.includes(:genre).page params[:page]
  end

  def show
    @game = Game.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @games_search = Game.where("game_name LIKE ?", wildcard_search)
  end
end
