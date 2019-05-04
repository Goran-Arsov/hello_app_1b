class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @category_posts = @category.posts
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(permit_params)
    if @category.save
      redirect_to categories_path, :notice => "You just created a new category"
    else
      render "new", :notice => "Your category WAS NOT created"
    end
    
  end

  def edit
  end

  def update
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.posts.empty?
      @category.destroy      
    else
      @category.posts.each do |cp|
        cp.destroy
      end
      @category.destroy
    end
    redirect_to categories_path, :notice => "Your category and all of its associated posts have been deleted"       
  end
  
  private

  def permit_params
    params.require(:category).permit(:name)
  end
end
