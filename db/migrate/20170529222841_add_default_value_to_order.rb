class AddDefaultValueToOrder < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :ticket_early_bird, :decimal, :default => 0
    change_column :orders, :ticket_regular, :decimal, :default => 0
    change_column :orders, :ticket_last_ticket, :decimal, :default => 0
    change_column :orders, :wht, :boolean, :default => false
  end
end
