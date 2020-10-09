class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    change_table :pets do |t|
      t.rename :medical_info, :size
    end
  end
end
