class ChangeMandoo < ActiveRecord::Migration
  def change
    change_column :memos, :mandoos, :integer, :default => 0
  end
end
