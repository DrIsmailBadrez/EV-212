class ChangeCapacityChargerToFloat < ActiveRecord::Migration[7.0]
  def change
    change_column :chargers, :capacity, :float
  end
end
