class OcurrencesController < ApplicationController
  before_action :set_ocurrence, only: %i[ show edit update destroy ]

  # GET /ocurrences or /ocurrences.json
  def index
    @ocurrences = Ocurrence.all
  end

  # GET /ocurrences/1 or /ocurrences/1.json
  def show
  end

  # GET /ocurrences/new
  def new
    @ocurrence = Ocurrence.new
  end

  # GET /ocurrences/1/edit
  def edit
  end

  # POST /ocurrences or /ocurrences.json
  def create
    @ocurrence = Ocurrence.new(ocurrence_params)

    respond_to do |format|
      if @ocurrence.save
        format.html { redirect_to ocurrence_url(@ocurrence), notice: "Ocurrence was successfully created." }
        format.json { render :show, status: :created, location: @ocurrence }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ocurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ocurrences/1 or /ocurrences/1.json
  def update
    respond_to do |format|
      if @ocurrence.update(ocurrence_params)
        format.html { redirect_to ocurrence_url(@ocurrence), notice: "Ocurrence was successfully updated." }
        format.json { render :show, status: :ok, location: @ocurrence }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ocurrence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ocurrences/1 or /ocurrences/1.json
  def destroy
    @ocurrence.destroy

    respond_to do |format|
      format.html { redirect_to ocurrences_url, notice: "Ocurrence was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocurrence
      @ocurrence = Ocurrence.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ocurrence_params
      params.require(:ocurrence).permit(:name, :description, :location, :status, :data)
    end
end
