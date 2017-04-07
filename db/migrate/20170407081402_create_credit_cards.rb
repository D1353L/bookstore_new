class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards do |t|
      t.string :number
      t.date :expiration
      t.string :code
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
