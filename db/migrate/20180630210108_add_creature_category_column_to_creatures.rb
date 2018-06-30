class AddCreatureCategoryColumnToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :creature_category, :string
  end
end
