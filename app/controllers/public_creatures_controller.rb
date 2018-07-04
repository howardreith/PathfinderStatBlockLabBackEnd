# frozen_string_literal: true

class PublicCreaturesController < OpenReadController
  before_action :set_public_creature

  # GET /create_public_creatures_tables
  # GET /create_public_creatures_tables.json
  def index
    @public_creatures = public_creatures.all

    render json: @public_creatures
  end

  # GET /create_public_creatures_tables/1
  # GET /create_public_creatures_tables/1.json
  def show
    render json: public_creatures.find(params[:id])
  end

  def set_public_creature
    @public_creature = current_user.public_creatures.find(params[:id])
  end

  def public_creature_params
    params.require(:public_creature).permit(:name, :cr, :user_id, :alignment,
      :subcategory, :size, :initiative, :senses, :perception, :languages, :skills,
       :items, :appearance, :description, :environment, :str, :dex, :con, :int,
       :wis, :cha, :reach, :dodgeac, :flat_footed, :creature_category,
       :organization, :treasure, :source, :ac, :ac_notes, :cmd, :saves, :hp,
       :hd, :dr, :fast_healing_regen, :immunities, :resistances, :sr,
       :weaknesses, :defensive_abilities, :speed, :speed_note, :melee, :cmb,
       :ranged, :offense_note, :special_abilities, :spell_like_abilities,
       :spells_known, :spells_prepared, :feats, :additional_special_qualities)
  end

  private :public_creature, :public_creature_params
end
