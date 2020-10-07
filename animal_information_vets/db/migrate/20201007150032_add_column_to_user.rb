class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :vet?, :boolean
    add_column :users, :owner?, :boolean
  end
end
