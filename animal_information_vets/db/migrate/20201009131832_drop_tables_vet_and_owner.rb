class DropTablesVetAndOwner < ActiveRecord::Migration[5.2]
  def change
    drop_table :vets
    drop_table :owners
  end
end
