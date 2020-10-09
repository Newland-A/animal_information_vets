class CreateVeterinariansTable < ActiveRecord::Migration[5.2]
  def change
    create_table :vets do |t|
      t.integer :vet_id
      t.string :name
      t.string :location
      t.string :username
      t.string :password_digest
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
