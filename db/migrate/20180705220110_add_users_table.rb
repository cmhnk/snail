# create Users
class AddUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string     :first_name
      t.string     :last_name
      t.string     :email
      t.string     :address
      t.date       :birthdate
      t.belongs_to :address_book, index: true
      t.timestamps
    end
  end
end
