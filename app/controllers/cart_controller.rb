class CartController < ApplicationController
  # POST /cart
  # data is sent as form data (params)
  def create
    id = params[:id].to_i
    return if session[:shopping_cart].include?(id)

    session[:shopping_cart] << id # push id onto the end of the cart array
    game = Game.find(id)
    flash[:notice] = "➕ #{game.game_name} added to cart!"
  end
end

# DELETE /cart/:id
def destroy
  id = params[:id].to_i
  session[:shopping_cart].delete(id)
  game = Game.find(id)
  flash[:notice] = "➖ #{game.game_name} removed from cart!"
end
