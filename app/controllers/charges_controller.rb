class ChargesController < ApplicationController
  def new
    @grandtotal = session[:grandtotal]
  end

  def create
    # Amount in cents

   @grandtotal = session[:grandtotal]

   @customer = Stripe::Customer.create(
     :email => params[:stripeEmail],
     :source  => params[:stripeToken]
   )

   @charge = Stripe::Charge.create(
     :customer    => @customer.id,
     :amount      => @grandtotal.to_i * 100,
     :description => 'Rails Stripe customer',
     :currency    => 'usd'
   )
  redirect_to services_path

  rescue Stripe::CardError => e
   flash[:error] = e.message
   redirect_to new_charge_path
  end
end
