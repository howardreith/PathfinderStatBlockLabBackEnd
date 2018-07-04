# frozen_string_literal: true
class CreaturesController < ProtectedController
  before_action :set_creature, only: [:show, :update, :destroy]

  # GET /creatures
  def index
    @creatures = current_user.creatures.all

    render json: @creatures
  end

  # GET /creatures/1
  def show
    render json: Creature.find(params[:id])
  end

  # POST /creatures
  def create
    @creature = current_user.creatures.build(creature_params)

    if @creature.save
      render json: @creature, status: :created
    else
      render json: @creature.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /creatures/1
  def update
    if @creature.update(creature_params)
      render json: @creature
    else
      render json: @creature.errors, status: :unprocessable_entity
    end
  end

  # DELETE /creatures/1
  def destroy
    @creature.destroy

    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creature
      @creature = current_user.creatures.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def creature_params
      params.require(:creature).permit(:name, :cr, :user_id, :alignment,
        :subcategory, :size, :initiative, :senses, :perception, :languages, :skills,
         :items, :appearance, :description, :environment, :str, :dex, :con, :int,
         :wis, :cha, :reach, :dodgeac, :flat_footed, :creature_category,
         :organization, :treasure, :source, :ac, :ac_notes, :cmd, :saves, :hp,
         :hd, :dr, :fast_healing_regen, :immunities, :resistances, :sr,
         :weaknesses, :defensive_abilities, :speed, :speed_note, :melee, :cmb,
         :ranged, :offense_note, :special_abilities, :spell_like_abilities,
         :spells_known, :spells_prepared, :feats, :additional_special_qualities)
    end
end
