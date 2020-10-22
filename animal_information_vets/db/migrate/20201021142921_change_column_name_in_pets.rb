class ChangeColumnNameInPets < ActiveRecord::Migration[5.2]
  def change
    rename_column :pets, :size, :pet_size
  end
end
