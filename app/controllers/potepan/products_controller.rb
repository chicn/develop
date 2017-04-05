class Potepan::ProductsController < ApplicationController

  def index
    @prototypes = Spree::Prototype.order('name asc')
    @products = Spree::Product.all
  end

  def show
    @product = Spree::Product.find(params[:id])
    @image = @product.display_image.attachment(:small)
  end



end
