class HomeController < ApplicationController
  # before_action :set_word, only: %i[ result search]


  def index
    @posts = Post.all
  end

  def about
    @users = User.all
  end 

  # GET /home/result
  # def result
  #   @posts = Post.all
  #   puts "search word= " + @word
  # end

  # POST /home/search
  def search
    
    if params[:word].blank?  
      redirect_to(root_path, notice: "Empty search field!") and return  
    else  
      word = params[:word].downcase
      @outputs = Post.all.where("lower(title) LIKE :search OR lower(tags) LIKE :search", search: "%#{word}%").uniq
      #@output_tags = Post.all.where("", "%#{word}%")
      @output_users = User.joins(:posts).where("lower(users.email) LIKE ?", "%#{word}%")
      if @outputs.count < 2
        post_count = " #{@outputs.count} tuuit "
      else
        post_count = " #{@outputs.count} tuuits "
      end
      if @output_users.count < 2
        post_user = "#{@output_users.count} user "
      else
        post_user = "#{@output_users.count} users " 
      end
      message = " #{post_count}and #{post_user}found. "
      flash.now[:notice] = message
    end
    puts "search word= " + params[:word]
    puts "search word= " + word
    #redirect_to search_path
  end
  
  def new
  end  
  def create
  end  

  
  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_word
  #     @word = params[:word]
  #   end
  
end
