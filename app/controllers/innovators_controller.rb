class InnovatorsController < ApplicationController
  before_action :set_innovator, only: [:show, :edit, :update, :destroy]

  # GET /innovators
  # GET /innovators.json
  def index
    @innovators = Innovator.all
  end

  # GET /innovators/1
  # GET /innovators/1.json
  def show
  end

  # GET /innovators/new
  def new
    @innovator = Innovator.new
  end

  # GET /innovators/1/edit
  def edit
  end

  # POST /innovators
  # POST /innovators.json
  def create
    @innovator = Innovator.new(innovator_params)

    respond_to do |format|
      if @innovator.save
        format.html { redirect_to @innovator, notice: 'Innovator was successfully created.' }
        format.json { render :show, status: :created, location: @innovator }
      else
        format.html { render :new }
        format.json { render json: @innovator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /innovators/1
  # PATCH/PUT /innovators/1.json
  def update
    respond_to do |format|
      if @innovator.update(innovator_params)
        format.html { redirect_to @innovator, notice: 'Innovator was successfully updated.' }
        format.json { render :show, status: :ok, location: @innovator }
      else
        format.html { render :edit }
        format.json { render json: @innovator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /innovators/1
  # DELETE /innovators/1.json
  def destroy
    @innovator.destroy
    respond_to do |format|
      format.html { redirect_to innovators_url, notice: 'Innovator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_innovator
      @innovator = Innovator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def innovator_params
      params.require(:innovator).permit(:name, :email, :password, :password_confirmation, :birth, :description, :url)
    end
end
