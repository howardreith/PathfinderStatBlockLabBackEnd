class RemoveSubtypeColumnFromCreatures < ActiveRecord::Migration[5.1]
  def change
    remove_column :creatures, :subtype, :string
  end
end
