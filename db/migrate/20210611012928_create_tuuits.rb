class CreateTuuits < ActiveRecord::Migration[6.1]
  def change
    create_table :tuuits do |t|
      t.integer :id
      t.integer :user_id
      t.timestamp :time
      t.text :tuuit
      t.string :title

      t.timestamps
    end
  end
end
