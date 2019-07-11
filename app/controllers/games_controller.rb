class GamesController < ApplicationController

  def index
    games = Game.all
    render json: games, include: [:user]
  end

  def create
    game = Game.create(game_params)
    render json: game, include: [:user]
  end

  private
  def game_params
    params.require(:game).permit(:user_id, :click_total)
  end

end
