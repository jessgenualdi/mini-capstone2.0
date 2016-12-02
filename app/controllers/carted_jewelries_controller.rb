class CartedJewelriesController < ApplicationController
  before_action :authenticate_user!

  def index
    # @carted_jewelries = CartedJewelry.all
    @carted_jewelries = current_user.carted_jewelries.where(status: "carted")
    render 'index.html.erb'
  end

  def create
    @carted_jewelries = CartedJewelry.new(
      user_id: current_user.id,
      status: "carted",
      jewelry_id: params[:jewelry_id],
      quantity: params[:quantity]
    )
    @carted_jewelries.save
    p @carted_jewelries.errors.full_messages
    flash[:success] = "Your order was created successfully!"
    redirect_to "/jewelry_store"
  end

  def show
    @order = CartedJewelry.find_by(user_id: params[:id])
    render 'show.html.erb'
  end

  def destroy
  end
end
