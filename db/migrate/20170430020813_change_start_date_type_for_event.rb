class ChangeStartDateTypeForEvent < ActiveRecord::Migration[5.0]
  def change
    change_table :events do |t|
      t.change :start_date, :datetime
    end
  end
end
