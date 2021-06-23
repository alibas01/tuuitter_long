class Admin::PostsController < ApplicationController
  http_basic_authenticate_with name:ENV['ADMIN_USERNAME'], password:ENV['ADMIN_PASSWORD']


  def index
    @posts = Post.all
  end

  def edit
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
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