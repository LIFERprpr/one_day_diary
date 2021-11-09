class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    @post.save
    redirect_to root_path
  end

  def index
  end

  def show
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :contents, :image)
  end

end
