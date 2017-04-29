class Potepan::ProductsController < ApplicationController

  def index
    @categories = Spree::Prototype.order('name asc')
    if params.has_key?("category")
      # temp = Spree::Product.all
      # @products = []
      # temp.each do |t|
      #   if t.taxons[0].prototypes[0].id.to_s == params[:category]
      #     @products << temp
      #   end
      # end
binding.pry
      @products = Spree::Product.includes(:prototypes).where("spree_prototypes.id = ?", params[:category]).references(:prototypes)
    else
      @products = Spree::Product.all
      binding.pry
    end
  end

  def show
    @product = Spree::Product.find(params[:id])
    @image = @product.display_image.attachment(:small)
  end

end
