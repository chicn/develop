class Potepan::ProductsController < ApplicationController

  def index
    @categories = Spree::Prototype.order('name asc')
    if params.has_key?("category")
      @products = Spree::Product.joins(:taxons => :prototypes).where(Spree::Prototype.arel_table[:id].eq(params[:category]))
    else
      @products = Spree::Product.all
    end
  end

  def show
    @product = Spree::Product.find(params[:id])
    @image = @product.display_image.attachment(:small)
  end

end
