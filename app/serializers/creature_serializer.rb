class CreatureSerializer < ActiveModel::Serializer
  attributes :id, :name, :cr, :alignment, :creature_type, :subtype, :size, :initiative,
  :senses, :perception, :languages, :skills, :str, :dex, :con, :int, :wis, :cha, :items,
  :appearance, :description, :environment, :organization, :treasure, :source,
  :ac, :touch, :flat_footed, :ac_notes, :cmd, :saves, :hp, :hd, :dr, :fast_healing_regen, :immunities,
  :resistances, :sr, :weaknesses, :defensive_abilities, :speed, :speed_note,
  :melee, :cmb, :ranged, :offense_note, :special_abilities, :reach,
  :spell_like_abilities, :spells_known, :spells_prepared, :feats,
  :additional_special_qualities
  has_one :user
end
