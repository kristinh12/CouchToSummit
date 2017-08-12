class AddLengthToTrails < ActiveRecord::Migration[5.0]
  def change
    add_column :trails, :length, :float
  end
end
