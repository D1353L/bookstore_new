class ChangeUnitPriceInOrderItems < ActiveRecord::Migration[5.0]
  def change
    change_column :order_items, :unit_price, :decimal, :precision => 8, :scale => 2
  end
end
