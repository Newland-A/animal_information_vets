class DropColumnVetsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :vets, :vet_id
    remove_column :vets, :username
    remove_column :vets, :password_digest
  end
end
