class PostsController < ApplicationController
  def index
    @posts = Post.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @post = Post.create(
      text: params[:text],
      user_id: current_user.id
    )
    redirect_to '/'
  end

  def show
    @post = Post.find_by(id: params[:id])
    render 'show.html.erb'
end
