class CreateStationChargers < ActiveRecord::Migration[7.0]
  def change
    create_table :station_chargers do |t|
      t.references :charger, null: false, foreign_key: true
      t.references :station, null: false, foreign_key: true
      t.integer :charger_count

      t.timestamps
    end
  end
end
