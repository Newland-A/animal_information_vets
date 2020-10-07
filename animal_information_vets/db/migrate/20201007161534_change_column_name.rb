class ChangeColumnName < ActiveRecord::Migration
  def change
    change_table :pets do |t|
      t.rename :medical_info, :size
    end
  end
end
