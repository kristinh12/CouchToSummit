class Addphotototrails < ActiveRecord::Migration[5.0]
  def change
    add_column :trails, :photo, :string
  end
end
