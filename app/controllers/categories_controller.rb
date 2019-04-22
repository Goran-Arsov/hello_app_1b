class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @category_posts = @category.posts
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
  end

  def destroy
  end
  
end
