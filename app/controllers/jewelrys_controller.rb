class JewelrysController < ApplicationController
  before_action :authenticate_admin!, except:[:jewelry_method, :show, :search]

  def jewelry_method
    sort_attribute = params[:sort]
    discount = params[:discount]
    random = params[:random]

    if sort_attribute
      @items = Jewelry.order(sort_attribute)
    elsif discount
      @items = Jewelry.where("price < ?",  90)
    elsif random
      @random_items = Jewelry.all
      @items.rand(@random_items.length)
    else
      @items = Jewelry.all
    end

    render 'jewelry_store.html.erb'
  end

  def index
    sort_attribute = params[:sort]
    @jewelry = Jewelry.order(sort_attribute)
    render 'index.html.erb'
  end

  def new
    @jewelry = Jewelry.new
    render 'new.html.erb'
  end

  def create
    jewelry = Jewelry.new(
      metal: params["metal"],
      kind: params["kind"],
      gemstone: params["gemstone"],
      price: params["price"], 
      image: params["image"]    
      )

    if jewelry.save 
      render 'jewelry_store.html.erb'
    else
      render 'new.html.erb'
    end
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
    @jewelry = Jewelry.find_by(id: jewelry_id)
    @jewelry.metal = params[:metal]
    @jewelry.gemstone = params[:gemstone]
    @jewelry.kind = params[:kind]
    @jewelry.price = params[:price]

    if @jewelry.save
      flash[:success] = "Jewelry successfully updated!"
      redirect_to "/jewelry/#{jewelry.id}"
    else
      render 'edit.html.erb'  
    end
  end

  def destroy
    jewelry = Jewelry.find_by(id: params[:id])
    jewelry.destroy
    flash[:success] = "Jewelry successfully destroyed!"
    redirect_to "/jewelry_store"
  end

end
