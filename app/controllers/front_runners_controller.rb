class FrontRunnersController < ApplicationController
  before_action :set_front_runner, only: [:show, :edit, :update, :destroy]

  # GET /front_runners
  # GET /front_runners.json
  def index
    @front_runners = FrontRunner.all
  end

  # GET /front_runners/1
  # GET /front_runners/1.json
  def show
  end

  # GET /front_runners/new
  def new
    @front_runner = FrontRunner.new
  end

  # GET /front_runners/1/edit
  def edit
  end

  # POST /front_runners
  # POST /front_runners.json
  def create
    @front_runner = FrontRunner.new(front_runner_params)

    respond_to do |format|
      if @front_runner.save
        format.html { redirect_to @front_runner, notice: 'Front runner was successfully created.' }
        format.json { render :show, status: :created, location: @front_runner }
      else
        format.html { render :new }
        format.json { render json: @front_runner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /front_runners/1
  # PATCH/PUT /front_runners/1.json
  def update
    respond_to do |format|
      if @front_runner.update(front_runner_params)
        format.html { redirect_to @front_runner, notice: 'Front runner was successfully updated.' }
        format.json { render :show, status: :ok, location: @front_runner }
      else
        format.html { render :edit }
        format.json { render json: @front_runner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /front_runners/1
  # DELETE /front_runners/1.json
  def destroy
    @front_runner.destroy
    respond_to do |format|
      format.html { redirect_to front_runners_url, notice: 'Front runner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_front_runner
      @front_runner = FrontRunner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def front_runner_params
      params.require(:front_runner).permit(:name, :email, :password_digest, :description, :aasm_state)
    end
end
