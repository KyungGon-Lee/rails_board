class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new

  end
  def create
    Post.create(
      title: params[:title],
      content: params[:content]
    )
    redirect_to '/'
  end

  def destroy
    # :id를 통해 Post 찾은 후 지워준다
    post = Post.find(params[:id])
    post.destroy
    redirect_to '/'
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    # :id를 통해 Post 찾아서 그걸 업데이트 해준다
    post = Post.find(params[:id])
    post.update(
      title: params[:title],
      content: params[:content]
    )
    redirect_to '/'
  end
end
