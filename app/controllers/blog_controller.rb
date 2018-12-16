class BlogController < ApplicationController

  def index
    @posts = Post.order(created_at: :desc).all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    post = params[:post][:title]
    title =  post.split('</p>')[0].remove('<p>')
    Post.create(title: title, text: post)
    @posts = Post.order(created_at: :desc).all
    respond_to do |format|
      format.js {render :action=>"create.js"} 
    end

  end

  def destroy
  end

  def refresh_part
    binding.pry
    @posts = Post.order(created_at: :desc).all
    # get whatever data you need to a variable named @data
    respond_to do |format|
      format.js
    end
    redirect_to :back
  end
end
