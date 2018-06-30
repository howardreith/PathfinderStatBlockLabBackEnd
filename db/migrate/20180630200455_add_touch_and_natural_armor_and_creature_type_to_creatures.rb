class AddTouchAndNaturalArmorAndCreatureTypeToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :touch, :integer
    add_column :creatures, :natural_armor, :integer
    add_column :creatures, :creature_type, :string
  end
end
