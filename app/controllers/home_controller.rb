class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def about
    @users = User.all
  end 
  
  def new
  end  
  def create
  end  

  
end
