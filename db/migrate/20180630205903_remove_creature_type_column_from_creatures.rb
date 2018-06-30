class RemoveCreatureTypeColumnFromCreatures < ActiveRecord::Migration[5.1]
  def change
    remove_column :creatures, :creature_type, :string
  end
end
