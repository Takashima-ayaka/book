class ProductsController < ApplicationController
  def index
    @books = Book.visible.all
    render layout: 'front'
  end
end
