class AddUserIdToUsersTable < ActiveRecord::Migration[5.2]
  def change
    add_column :vets, :user_id, :integer
    add_column :owners, :user_id, :integer
  end
end
