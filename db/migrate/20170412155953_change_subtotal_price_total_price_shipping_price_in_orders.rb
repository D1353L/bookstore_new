class ChangeSubtotalPriceTotalPriceShippingPriceInOrders < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :subtotal_price, :decimal, :precision => 8, :scale => 2
    change_column :orders, :total_price, :decimal, :precision => 8, :scale => 2
    change_column :orders, :shipping_price, :decimal, :precision => 8, :scale => 2
  end
end
