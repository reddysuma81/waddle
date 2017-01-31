class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:edit, :update, :destroy, :change]

  respond_to :html

  def index
    @unpublished = current_user.posts.where(state: "unpublished")
    @published = current_user.posts.where(state: "published")
    @posts = Post.all
  end

  def show
    @post = Post.includes(:categories).find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post, notice: 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_url
  end

  def change
    @post.update_attributes(state: params[:state])
    redirect_to posts_path
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:header, :tag_line, :body, :published_at, :image, :state)
    end
end
