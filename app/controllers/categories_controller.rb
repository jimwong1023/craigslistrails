class CategoriesController < ApplicationController
  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @posts = @category.posts
    render "posts/index"
  end

end
