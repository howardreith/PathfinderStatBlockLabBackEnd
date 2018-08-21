class PublicCreaturesController < ApplicationController
  before_action :set_public_creature, only: [:show, :update, :destroy]

  # GET /public_creatures
  def index
    @public_creatures = PublicCreature.all

    render json: @public_creatures
  end

  # GET /public_creatures/1
  def show
    render json: @public_creature
  end

  # POST /public_creatures
  def create
    @public_creature = PublicCreature.new(public_creature_params)

    if @public_creature.save
      render json: @public_creature, status: :created, location: @public_creature
    else
      render json: @public_creature.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /public_creatures/1
  def update
    if @public_creature.update(public_creature_params)
      render json: @public_creature
    else
      render json: @public_creature.errors, status: :unprocessable_entity
    end
  end

  # DELETE /public_creatures/1
  def destroy
    @public_creature.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_creature
      @public_creature = PublicCreature.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def public_creature_params
      params.fetch(:public_creature, {})
    end
end
