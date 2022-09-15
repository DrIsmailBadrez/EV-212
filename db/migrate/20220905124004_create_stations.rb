class CreateStations < ActiveRecord::Migration[7.0]
  def change
    create_table :stations do |t|
      t.string :name
      t.text :address
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
