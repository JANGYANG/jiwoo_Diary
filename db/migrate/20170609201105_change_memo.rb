class ChangeMemo < ActiveRecord::Migration
  def change
    add_column :memos, :likes, :integer
  end
end
