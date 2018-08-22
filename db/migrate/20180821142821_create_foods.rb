class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :food
      t.string :drink
      t.timestamps
    end
  end
end
