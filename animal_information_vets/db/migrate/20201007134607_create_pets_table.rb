class CreatePetsTable < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.text :medical_info
      t.string :breed
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :owner_id
      t.integer :vet_id
    end
  end
end
