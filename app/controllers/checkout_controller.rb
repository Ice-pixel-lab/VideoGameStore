class CheckoutController < ApplicationController
  def create
    # establish a connection to Stripe and Redirect the user to the payment screen
    product = Game.find(params[:id])

    if product.nil?
      redirect_to root_path
      return
    end

    @session = Stripe::Checkout::Session.create(
      payment_method_types: ["card"],
      success_url:          checkout_success_url,
      cancel_url:           checkout_cancel_url,
      line_items:           [
        name:     product.game_name,
        amount:   (product.price * 100).to_i,
        currency: "cad",
        quantity: 1
      ]
    )
    redirect_to @session.url, allow_other_host: true
  end

  def success
    # we took the customers money
  end

  def cancel
    # something went wrong with the payment
  end

  def view
    # see the cart
  end
end
