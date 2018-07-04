class CreateCreatePublicCreaturesTables < ActiveRecord::Migration[5.1]
  def change
    create_table :public_creatures do |t|
      t.string :name
      t.float :cr
      t.string :alignment
      t.string :creature_category
      t.string :subcategory
      t.string :size
      t.string :initiative
      t.string :senses
      t.string :perception
      t.string :languages
      t.string :skills
      t.string :items
      t.string :appearance
      t.string :description
      t.string :environment
      t.string :organization
      t.string :treasure
      t.string :source
      t.string :ac
      t.string :ac_notes
      t.string :cmd
      t.string :saves
      t.integer :hp
      t.string :hd
      t.string :dr
      t.string :fast_healing_regen
      t.string :immunities
      t.string :resistances
      t.integer :sr
      t.string :weaknesses
      t.string :defensive_abilities
      t.string :speed
      t.string :speed_note
      t.string :melee
      t.string :cmb
      t.string :ranged
      t.string :offense_note
      t.string :special_abilities
      t.string :spell_like_abilities
      t.string :spells_known
      t.string :spells_prepared
      t.string :feats
      t.string :additional_special_qualities
      t.string :str
      t.string :dex
      t.string :con
      t.string :int
      t.string :wis
      t.string :cha
      t.string :reach
      t.integer :flat_footed
      t.integer :dodgeac
      t.timestamps
    end
  end
end
