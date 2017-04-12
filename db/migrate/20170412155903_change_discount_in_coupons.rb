class ChangeDiscountInCoupons < ActiveRecord::Migration[5.0]
  def change
    change_column :coupons, :discount, :decimal, :precision => 8, :scale => 2
  end
end
