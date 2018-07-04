class ChangeCrToBeFloatInCreatures < ActiveRecord::Migration[5.1]
  def change
    change_column :creatures, :cr, :float
  end
end
