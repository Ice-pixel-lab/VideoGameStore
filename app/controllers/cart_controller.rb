class CartController < ApplicationController
  # POST /cart
  # data is sent as form data (params)
  def create
    logger.debug("Adding #{params[:id]} to cart.")
    id = params[:id].to_i
    unless session[:shopping_cart].include?(id)
      session[:shopping_cart] << id # push id onto the end of the cart array
      game = Game.find(id)
      redirect_to root_path
      flash[:notice] = "➕ #{game.game_name} added to cart!"
    end
  end

  # DELETE /cart/:id
  def destroy
    id = params[:id].to_i
    session[:shopping_cart].delete(id)
    game = Game.find(id)
    flash[:notice] = "➖ #{game.game_name} removed from cart!"
    redirect_to root_path
  end
end
