class PotepanController < ApplicationController

  #def index
  #end
  def single_product
    @product = Spree::Product.first
    # @product = Spree::Product.find(params[:id])
  end

  def checkout_complete
  end
  def checkout_step_1
  end
  def checkout_step_3
  end
  def checkout_step_4
  end

end
