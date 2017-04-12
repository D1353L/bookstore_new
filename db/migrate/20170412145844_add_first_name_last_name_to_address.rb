class AddFirstNameLastNameToAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :first_name, :string
    add_column :addresses, :last_name, :string
  end
end
