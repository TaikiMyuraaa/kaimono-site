class CartsController < ApplicationController
  
  def index
    @c = Cart.all
  end
  
  def new 
    @cart = Cart.new
  end

  def create
    @cart = Cart.new(params[:name])
    if @cart.save  
      render 'index'
    else
      render 'new'
    end
    
  end
end
