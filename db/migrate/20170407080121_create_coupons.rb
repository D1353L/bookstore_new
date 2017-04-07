class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :code
      t.decimal :discount, precision: 12, scale: 3
      t.boolean :active
      t.integer :quantity
      t.date :expiration

      t.timestamps
    end
  end
end
