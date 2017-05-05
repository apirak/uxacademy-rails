class RenameTypeColumnOfEvent < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :type, :category
  end
end
