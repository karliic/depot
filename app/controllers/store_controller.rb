class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @count = access_counter
  end

  def access_counter
    session[:counter] ||= 0
    session[:counter] += 1
  end
end
