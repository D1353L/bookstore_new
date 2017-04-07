class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :street_address
      t.string :country
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
