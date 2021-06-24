class HomeController < ApplicationController
  before_action :set_word, only: %i[ result]


  def index
    @posts = Post.all
  end

  def about
    @users = User.all
  end 

  # GET /home/result
  def result
    @posts = Post.all
    word = params[:word]
  end

  # POST /home/search
  def search
    word = params[:word]
    redirect_to result_path
  end
  
  def new
  end  
  def create
  end  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word
      @word = params[:word]
    end
  
end
