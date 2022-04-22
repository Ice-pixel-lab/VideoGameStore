class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[address city])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[address city])
  end

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
