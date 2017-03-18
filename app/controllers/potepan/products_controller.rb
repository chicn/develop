class Potepan::ProductsController < ApplicationController

  def show
    @products = Spree::Product.find_by(params[:id])
  end

end
