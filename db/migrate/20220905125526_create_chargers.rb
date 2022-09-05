class CreateChargers < ActiveRecord::Migration[7.0]
  def change
    create_table :chargers do |t|
      t.string :type
      t.integer :capacity
      t.timestamps
    end
  end
end
