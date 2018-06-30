class RemoveTouchacColumnFromCreatures < ActiveRecord::Migration[5.1]
  def change
    remove_column :creatures, :touchac, :integer
  end
end
