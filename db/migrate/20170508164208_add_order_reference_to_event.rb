class AddOrderReferenceToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :event_id, :integer
  end
end
