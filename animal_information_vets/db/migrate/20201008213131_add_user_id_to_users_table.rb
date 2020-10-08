class AddUserIdToUsersTable < ActiveRecord::Migration
  def change
    add_column :vets, :user_id, :integer
    add_column :owners, :user_id, :integer
  end
end
