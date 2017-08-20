class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.integer :user_id
      t.integer :trail_id
      t.date :complete_by
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
