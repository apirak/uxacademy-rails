class AddTicketToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :max_early_bird, :decimal
    add_column :events, :max_general, :decimal
    add_column :events, :max_last_ticket, :decimal
  end
end
