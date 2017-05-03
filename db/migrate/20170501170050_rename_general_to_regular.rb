class RenameGeneralToRegular < ActiveRecord::Migration[5.0]
  def change
    rename_column :events, :price_general, :price_regular
  end
end
