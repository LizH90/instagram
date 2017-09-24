class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def index
    if signed_in?
      @posts = Post.all.order('created_at DESC')
    else
      redirect_to new_user_session_path
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = 'Success!'
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full_messages
      render 'new'
    end
  end

  def destroy
    @post = Post.destroy(params[:id])
    redirect_to post_path
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(params[:id])
      flash[:success] = 'Pic was updated!'
      redirect_to @post
    else
      render 'edit'
    end
  end

  private

  def post_params
    params.require(:post).permit(:image, :description)
  end
end
