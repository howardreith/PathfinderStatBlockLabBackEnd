class RemoveTypeColumnFromCreature < ActiveRecord::Migration[5.1]
  def change
    remove_column :creatures, :type, :string
  end
end
