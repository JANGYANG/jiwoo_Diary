class AddMandoosToMemos < ActiveRecord::Migration
  def change
    add_column :memos, :mandoos, :integer, :default => 0
  end
end
