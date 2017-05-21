class CreateMemoComments < ActiveRecord::Migration
  def change
    create_table :memo_comments do |t|
      t.string :writer
      t.text :content
      t.string :password
      t.integer :memo_id

      t.timestamps null: false
    end
  end
end
