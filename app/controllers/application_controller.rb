class ApplicationController < ActionController::Base
  before_action :initialize_session
  helper_method :cart

  # this will initizalize the session
  def initialize_session
    session[:shopping_cart] ||= [] # an empty array of products
  end

  def cart
    # retrive a collection of products from a collection
    Game.find(session[:shopping_cart])
  end
end
