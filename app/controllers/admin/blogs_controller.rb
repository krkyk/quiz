class Admin::BlogsController < ApplicationController
  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def index
    @blog = Blog.all
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body)
  end

end
