class AddAlignmentAndTypeToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :alignment, :string
    add_column :creatures, :type, :string
  end
end
