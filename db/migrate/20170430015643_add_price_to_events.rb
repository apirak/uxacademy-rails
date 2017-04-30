class AddPriceToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :price_early_bird, :decimal
    add_column :events, :price_general, :decimal
    add_column :events, :price_last_ticket, :decimal
  end
end
