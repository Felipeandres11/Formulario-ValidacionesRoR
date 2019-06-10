class SalesController < ApplicationController

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(post_params)
    @sale.save
    redirect_to posts_path
  end


  private
  def post_params
    params.require(:post).permit(:cod, :detail, :category, :value, :discount, :tax, :total)
  end

end
