class AddSubcategoryColumnToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :subcategory, :string
  end
end
