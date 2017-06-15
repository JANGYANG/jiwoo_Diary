class AddLoveToMemo < ActiveRecord::Migration
  def change
    add_column :memos, :loves, :integer, :default => 0
  end
end
