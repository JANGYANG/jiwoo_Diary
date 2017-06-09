class CreateMemos < ActiveRecord::Migration
  def change
    change_table :memos do |t|
      t.string :title
      t.text :content
      t.integer :like
      t.timestamps null: false
    end
  end
end
