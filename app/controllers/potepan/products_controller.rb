class Potepan::ProductsController < ApplicationController
  def show
    @products = Spree::Product.find_by(params[:id])
    @single_product = Spree::Product.find_by(params[:id])
  end
end
