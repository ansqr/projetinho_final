class BeneficiariesController < ApplicationController
  before_action :set_beneficiary, only: %i[ show edit update destroy ]

  # GET /beneficiaries or /beneficiaries.json
  def index
    @beneficiaries = Beneficiary.all
  end

  # GET /beneficiaries/1 or /beneficiaries/1.json
  def show
  end

  # GET /beneficiaries/new
  def new
    @beneficiary = Beneficiary.new
  end

  # GET /beneficiaries/1/edit
  def edit
  end

  # POST /beneficiaries or /beneficiaries.json
  def create
    @beneficiary = Beneficiary.new(beneficiary_params)

    respond_to do |format|
      if @beneficiary.save
        format.html { redirect_to beneficiary_url(@beneficiary), notice: "Beneficiary was successfully created." }
        format.json { render :show, status: :created, location: @beneficiary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @beneficiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /beneficiaries/1 or /beneficiaries/1.json
  def update
    respond_to do |format|
      if @beneficiary.update(beneficiary_params)
        format.html { redirect_to beneficiary_url(@beneficiary), notice: "Beneficiary was successfully updated." }
        format.json { render :show, status: :ok, location: @beneficiary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @beneficiary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beneficiaries/1 or /beneficiaries/1.json
  def destroy
    @beneficiary.destroy

    respond_to do |format|
      format.html { redirect_to beneficiaries_url, notice: "Beneficiary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beneficiary
      @beneficiary = Beneficiary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def beneficiary_params
      params.require(:beneficiary).permit(:name, :cpf, :phone, :address)
    end
end
