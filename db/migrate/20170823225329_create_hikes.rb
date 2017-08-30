class CreateHikes < ActiveRecord::Migration[5.0]
  def change
    create_table :hikes do |t|
      t.integer :trail_id
      t.integer :user_id
      t.text :description
      t.date :date_completed
      t.timestamp :start
      t.timestamp :end
      t.timestamps
    end
    add_index :hikes, :user_id
    add_index :hikes, [:user_id, :trail_id]
  end
end
