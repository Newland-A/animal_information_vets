class ChangeDatatypeForColumnName < ActiveRecord::Migration
  def change
    change_column :pets, :size, :string
  end
end
