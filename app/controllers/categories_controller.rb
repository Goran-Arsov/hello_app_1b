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
    @category = Category.new(permitted_params)
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
  end
  
  private

  def permitted_params
    params.require(:category).permit(:name)
  end
end
