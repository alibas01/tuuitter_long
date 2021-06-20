class CreateHomes < ActiveRecord::Migration[6.1]
  def change
    create_table :homes do |t|
      t.text :post
      t.string :title
      t.integer :post_id
      t.string :tags
      t.integer :user_id

      t.timestamps
    end
  end
end
