class CreateOwnersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :owners do |t|
      t.integer :owner_id
      t.string :username
      t.string :password_digest
      t.string :name
      t.string :location
      t.integer :pet_id
      t.datetime :create_at
      t.datetime :updated_at
    end
  end
end
