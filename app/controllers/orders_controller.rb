class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def create
    # @order = Order.new(
    #   quantity: params[:quantity]
    # )

    @carted_jewelrys = current_user.carted_jewelrys.where(status: "carted")
    subtotal = 0
    @carted_jewelrys.each do |carted_jewelry|
      subtotal += carted_jewelry.quantity * carted_jewelry.jewelry.price
    end
    tax = subtotal + 0.09
    total = subtotal + tax

    @order = Order.new(
      user_id: current_user.id,
      subtotal: subtotal,
      tax: tax,
      total: total
      )
    @order.save

    carted_jewelrys.update_all(status: "purchased", order_id: @order.id)

    flash[:success] = "Your order was created successfully!"
    redirect_to "/orders/#{@order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
