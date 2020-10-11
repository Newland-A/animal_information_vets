class RemoveUserIdColumnFromPetsTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :pets, :user_id
  end
end
