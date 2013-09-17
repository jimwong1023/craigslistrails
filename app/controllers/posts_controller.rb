class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def new
    @post = Post.new
  end

  def create
    category = Category.find(params[:category_id])
    post = Post.new(title: params[:post][:title], description: params[:post][:description])
    post.save
    category.posts << post

    redirect_to category_post_path(category, post)
  end

  def edit
    @post = Post.find(params[:id])
    # @category = Category.find(params[:category_id])
  end

  def update
    post = Post.find(params[:id])
    puts post
    post.update(title: params[:post][:title], description: params[:post][:description])
    puts post
    category = post.category

    redirect_to category_post_path(category, post)
  end

end
