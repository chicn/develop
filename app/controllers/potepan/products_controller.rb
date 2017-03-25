class Potepan::ProductsController < ApplicationController

  def index
    @prototypes = Spree::Prototype.order('name asc')
  end

  def show
    @products = Spree::Product.find_by(params[:id])
    @image = @products.display_image
  end

end
