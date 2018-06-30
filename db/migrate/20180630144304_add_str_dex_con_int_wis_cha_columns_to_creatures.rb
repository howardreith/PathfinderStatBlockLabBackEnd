class AddStrDexConIntWisChaColumnsToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :str, :string
    add_column :creatures, :dex, :string
    add_column :creatures, :con, :string
    add_column :creatures, :int, :string
    add_column :creatures, :wis, :string
    add_column :creatures, :cha, :string
  end
end
