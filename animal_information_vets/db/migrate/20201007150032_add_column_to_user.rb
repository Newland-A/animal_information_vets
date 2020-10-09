class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :vet?, :boolean
    add_column :users, :owner?, :boolean
  end
end
