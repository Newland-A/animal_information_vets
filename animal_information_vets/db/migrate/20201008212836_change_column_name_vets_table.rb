class ChangeColumnNameVetsTable < ActiveRecord::Migration
  def change
    rename_column :vets, :name, :practice_name
  end
end
