class ChangeDatatypeForColumnName < ActiveRecord::Migration[5.2]
  def change
    change_column :pets, :size, :string
  end
end
