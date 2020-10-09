class ChangeColumnNameInUsersTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :owner?, :is_owner
    rename_column :users, :vet?, :is_vet
  end
end
