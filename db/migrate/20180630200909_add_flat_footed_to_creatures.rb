class AddFlatFootedToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :flat_footed, :integer
  end
end
