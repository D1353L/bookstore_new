class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal_price, precision: 12, scale: 3
      t.decimal :total_price, precision: 12, scale: 3
      t.decimal :shipping_price, precision: 12, scale: 3
      t.references :order_status, foreign_key: true
      t.references :user, foreign_key: true
      t.references :coupon, foreign_key: true
      t.references :billing_address, foreign_key: { to_table: :addresses }
      t.references :shipping_address, foreign_key: { to_table: :addresses }

      t.timestamps
    end
  end
end
