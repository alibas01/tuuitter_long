class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name:ENV['ADMIN_USERNAME'], password:ENV['ADMIN_PASSWORD']

  def show
    @user_count = User.count
    @post_count = Post.count
  end
end