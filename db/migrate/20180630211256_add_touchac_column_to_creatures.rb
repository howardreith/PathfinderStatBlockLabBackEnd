class AddTouchacColumnToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :touchac, :integer
  end
end
