class DropTablesVetAndOwner < ActiveRecord::Migration
  def change
    drop_table :vets
    drop_table :owners
  end
end
