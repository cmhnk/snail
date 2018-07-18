class AddAddressBookTable < ActiveRecord::Migration[5.2]
  def change
    create_table :address_books do |t|
      t.string :owner
      t.string :category
      t.timestamps
    end
  end
end
