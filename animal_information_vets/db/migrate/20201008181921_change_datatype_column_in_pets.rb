class ChangeDatatypeColumnInPets < ActiveRecord::Migration
  def change
    change_column(:pets, :age, :string)
  end
end
