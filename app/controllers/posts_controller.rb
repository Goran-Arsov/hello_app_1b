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

  def create
    @post = Post.new(permitted_params)
    if @post.save
      redirect_to root_path, :notice => "Your post was saved"
    else
      render "new", :notice => "Your post WAS NOT saved"
    end
  end

  def edit
    @category = Category.all
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(permitted_params)
      redirect_to post_path, :notice => "Your post was updated"
    else
      render "edit", :notice => "Your post WAS NOT updated"
    end

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "Your post has been deleted"
  end
  
  private 

    def permitted_params
      params.require(:post).permit(:title, :body, :category_id)
    end
end
