class DropColumnFromOwnersTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :owners, :owner_id
    remove_column :owners, :username
    remove_column :owners, :password_digest
    remove_column :owners, :pet_id
  end
end
