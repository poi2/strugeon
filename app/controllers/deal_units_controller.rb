class DealUnitsController < ApplicationController
  before_action :set_deal_unit, only: [:show, :edit, :update, :destroy]

  # GET /deal_units
  # GET /deal_units.json
  def index
    @deal_units = DealUnit.all
  end

  # GET /deal_units/1
  # GET /deal_units/1.json
  def show
  end

  # GET /deal_units/new
  def new
    @deal_unit = DealUnit.new
  end

  # GET /deal_units/1/edit
  def edit
  end

  # POST /deal_units
  # POST /deal_units.json
  def create
    @deal_unit = DealUnit.new(deal_unit_params)

    respond_to do |format|
      if @deal_unit.save
        format.html { redirect_to @deal_unit, notice: 'Deal unit was successfully created.' }
        format.json { render :show, status: :created, location: @deal_unit }
      else
        format.html { render :new }
        format.json { render json: @deal_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deal_units/1
  # PATCH/PUT /deal_units/1.json
  def update
    respond_to do |format|
      if @deal_unit.update(deal_unit_params)
        format.html { redirect_to @deal_unit, notice: 'Deal unit was successfully updated.' }
        format.json { render :show, status: :ok, location: @deal_unit }
      else
        format.html { render :edit }
        format.json { render json: @deal_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deal_units/1
  # DELETE /deal_units/1.json
  def destroy
    @deal_unit.destroy
    respond_to do |format|
      format.html { redirect_to deal_units_url, notice: 'Deal unit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deal_unit
      @deal_unit = DealUnit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deal_unit_params
      params.require(:deal_unit).permit(:deal_id, :title, :description, :price, :reward)
    end
end
