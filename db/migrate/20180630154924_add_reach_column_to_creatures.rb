class AddReachColumnToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :reach, :string
  end
end
