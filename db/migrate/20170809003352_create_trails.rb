class CreateTrails < ActiveRecord::Migration[5.0]
  def change
    create_table :trails do |t|
      t.text :name
      t.integer :highest_elevation
      t.integer :elevation_gain
      t.timestamps
    end
  end
end
