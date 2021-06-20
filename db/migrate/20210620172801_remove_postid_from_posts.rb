class RemovePostidFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :postid, :integer
  end
end
