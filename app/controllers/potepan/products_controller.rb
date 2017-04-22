class Potepan::ProductsController < ApplicationController

  def index
    @categories = Spree::Prototype.order('name asc')
    if params.has_key?("category")
      temp = Spree::Product.all
      @products = []
      temp.each do |t|
        if t.taxons[0].prototypes[0].id.to_s == params[:category]
          @products << temp
        end
      end
      # @products = Spree::Product.all
    else
      @products = Spree::Product.all
    end
  end

  def show
    @product = Spree::Product.find(params[:id])
    @image = @product.display_image.attachment(:small)
  end

end
