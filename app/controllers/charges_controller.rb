class ChargesController < ApplicationController

    def new
    end
    
    def create
      # Amount in cents
      @amount = (params[:amount].to_i * 10)
    
      customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
      )
    
      charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'usd'
      )


    # if charge 
    # add order to order table 
    # order = Order.new
    #  @order = Order.new(order_params)

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end

end
