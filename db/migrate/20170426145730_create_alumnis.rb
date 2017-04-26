class CreateAlumnis < ActiveRecord::Migration[5.0]
  def change
    create_table :alumnis do |t|
      t.string :name
      t.string :position
      t.string :company
      t.string :company_url
      t.string :photo
      t.string :feedback

      t.timestamps
    end
  end
end
