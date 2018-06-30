class AddDodgeAcColumnToCreatures < ActiveRecord::Migration[5.1]
  def change
    add_column :creatures, :dodgeac, :integer
  end
end
