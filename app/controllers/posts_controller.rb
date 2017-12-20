class PostsController < ApplicationController
  before_action :authenticate_user # 포스트 컨트롤러발동되기 이전에 무조건 authenticate_user 발동

  def index
    if current_user
    @posts = Post.all.reverse
  else
    redirect_to '/login'
  end

  def show
    @post = Post.find(params[:id])
  end

  end

  def new
  end

  def create
    email = User.find_by(email: params[:email])
    # user = User.find_by(user_id: params[:user])
    Post.create(
      title: params[:title],
      content: params[:content],
      email: current_user.email,
      user: current_user
    )
    redirect_to '/'
  end

  def destroy
    # :id 를 통해 Post 찾는다.
    # 그걸 지워준다.
    post = Post.find(params[:id])
    post.destroy
    # redirect_to "/posts/show/#{params[:id]}"
    redirect_to :back
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    # :id 를 통해 Post 찾는다.
    # 그걸 업데이트해준다.
    post = Post.find(params[:id])
    post.update(
      title: params[:title],
      content: params[:content],
      email: current_user.email,
      user: current_user
    )
    redirect_to '/'
  end

  def add_comment
    email = User.find_by(email: params[:email])
    Comment.create(
      content: params[:content],
      post_id: params[:id],
      email: current_user.email,
      user: current_user
    )
    redirect_to '/'
  end
end
