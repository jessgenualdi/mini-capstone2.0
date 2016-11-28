class ImagesController < ApplicationController
  def index
    @images = Images.all
    render 'index.html.erb'
end
