class RemoveNaturalArmorColumnFromCreatures < ActiveRecord::Migration[5.1]
  def change
    remove_column :creatures, :natural_armor, :integer
  end
end
