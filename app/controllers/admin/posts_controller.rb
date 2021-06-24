class Admin::PostsController < ApplicationController
  http_basic_authenticate_with name:ENV['ADMIN_USERNAME'], password:ENV['ADMIN_PASSWORD']


  def index
    @posts = Post.all
  end



  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Only allow a list of trusted parameters through.
  def post_params
    params.require(:post).permit(:title, :post, :tags, :user_id)
  end

end