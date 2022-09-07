class AddTetheredColumnToChargers < ActiveRecord::Migration[7.0]
  def change
    add_column :chargers, :tethered, :boolean, default: true
  end
end
