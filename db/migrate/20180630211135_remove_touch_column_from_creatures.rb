class RemoveTouchColumnFromCreatures < ActiveRecord::Migration[5.1]
  def change
    remove_column :creatures, :touch, :integer
  end
end
