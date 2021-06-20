class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :postid
      t.string :title
      t.text :post
      t.string :tags

      t.timestamps
    end
  end
end
