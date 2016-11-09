class JewelrysController < ApplicationController
  def jewelry_method
    @items = Jewelry.all
    render 'jewelry_store.html.erb'
  end
end
