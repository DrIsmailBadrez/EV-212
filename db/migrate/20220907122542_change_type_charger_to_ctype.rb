class ChangeTypeChargerToCtype < ActiveRecord::Migration[7.0]
  def change
    rename_column :chargers, :type, :ctype
  end
end
