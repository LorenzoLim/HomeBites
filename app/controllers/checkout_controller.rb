class CheckoutController < ApplicationController

  # post /checkout
  def create

    # Look up the product so we can:
    # - Set the price
    # - Grab the owner's stripe ID to distribute funds
    @dish = Dish.find(params[:dish_id])


    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@dish.price * 100).to_i,
      :description => 'Food Order',
      :currency    => 'aud',
      # Strip connect magic, send 80% of the funds (keep 20% cut)
      :destination => {
        :amount => (@dish.price * 100 * 0.8).to_i,
        :account => @dish.user.stripe_user_id,
      }
    )

    # Log the response from Stripe
    puts charge.inspect


    # Send an email of the product bought
    SupportMailer.contact_support(current_user.email, @dish.name).deliver_now

    # Success!
    redirect_to '/pages/thankyou'

    rescue Stripe::CardError => e
      flash[:notice] = e.message
      redirect_to @dish
  end

  def thankyou
  end
end
