class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :start_date
      t.decimal :period
      t.decimal :max_price
      t.decimal :low_price
      t.string :url
      t.string :url_gallery
      t.timestamps
    end
  end
end
