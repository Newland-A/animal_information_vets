class ChangeColumnNameVetsTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :vets, :name, :practice_name
  end
end
