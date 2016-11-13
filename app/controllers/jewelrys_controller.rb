class JewelrysController < ApplicationController
  def jewelry_method
    @items = Jewelry.all
    render 'jewelry_store.html.erb'
  end

  def index
    @jewelry = Jewelry.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    jewelry = Jewelry.new(
      metal: params["metal"],
      kind: params["kind"],
      gemstone: params["gemstone"],
      price: params["price"]    
      )
    jewelry.save
    render 'create.html.erb'
  end

  def show
    jewelry_id = params[:id]
    @jewelry = Jewelry.find_by(id: jewelry_id)
    render 'show.html.erb'
  end

  def edit
    jewelry_id = params[:id]
    @jewelry = Jewelry.find_by(id: jewelry_id)
    render 'edit.html.erb'
  end

  def update
    jewelry_id = params[:id]
    jewelry = Jewelry.find_by(id: jewelry_id)
    jewelry.metal = params[:metal]
    jewelry.gemstone = params[:gemstone]
    jewelry.kind = params[:kind]
    jewelry.price = params[:price]
    jewelry.save
    render 'update.html.erb'
  end

  def delete

  end

end
