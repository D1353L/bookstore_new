class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :short_description
      t.text :full_description
      t.string :image
      t.decimal :price, precision: 12, scale: 3

      t.timestamps
    end
  end
end
