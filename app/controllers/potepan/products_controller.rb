class Potepan::ProductsController < ApplicationController

  def index
    @prototypes = Spree::Prototype.order('name asc')
    @products = Spree::Product.all
  end

  def show
    @product = Spree::Product.find_by(params[:id])
    @image = @product.display_image.attachment(:small)
  end

  # def show_category
  # end


end
