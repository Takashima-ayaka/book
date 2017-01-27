class ProductsController < ApplicationController
  def index
    @product = Product.ransack(params[:q])
    products = @product.result.visible
    @books = Book.visible.all
    @musics = Music.visible.all
    render layout: 'front'
  end
end
