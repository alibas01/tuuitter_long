class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def about
  end 
  
  def new
  end  
  def create
  end  

  
end
