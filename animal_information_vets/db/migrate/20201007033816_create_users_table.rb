class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamp :create_at
      t.timestamp :updated_at
  end
end
