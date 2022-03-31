class WelcomeController < ApplicationController
  def index
    @games = Game.all.limit(6)
  end
end
