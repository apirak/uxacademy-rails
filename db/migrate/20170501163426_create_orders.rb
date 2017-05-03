class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :condition
      t.boolean :wht
      t.string :company_name
      t.text :company_address
      t.string :company_tax_id
      t.decimal :ticket_early_bird
      t.decimal :ticket_regular
      t.decimal :ticket_last_ticket
      t.string :payment_status
      t.string :payment_id
      t.string :payment_total
      t.string :payment_method
      t.string :payment_description
      t.datetime :payment_date

      t.timestamps
    end
  end
end
