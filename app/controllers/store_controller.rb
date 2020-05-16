class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  before_action :visit_index_count, only:[:index]
  
  def index
    @products = Product.order(:title)
  end
end
