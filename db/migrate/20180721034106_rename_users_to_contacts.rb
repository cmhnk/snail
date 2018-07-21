class RenameUsersToContacts < ActiveRecord::Migration[5.2]
  def change
    rename_table :users, :contacts
  end
end
