class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @category = Category.all
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(permitted_params)
    if @post.save
      redirect_to root_path, :notice => "Your post is saved"
    else
      render "new", :notice => "Your post WAS NOT saved"
    end
  end

  def update
  end

  def destroy
  end
  
  private 

    def permitted_params
      params.require(:post).permit(:title, :body, :category_id)
    end
end
