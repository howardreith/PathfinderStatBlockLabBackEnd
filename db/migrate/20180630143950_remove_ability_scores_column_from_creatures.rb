class RemoveAbilityScoresColumnFromCreatures < ActiveRecord::Migration[5.1]
  def change
    remove_column :creatures, :ability_scores, :string
  end
end
