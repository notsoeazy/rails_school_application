class GuardiansController < ApplicationController
  before_action :set_guardian, only: %i[ show edit update destroy ]

  # GET /guardians or /guardians.json
  def index
    @guardians = Guardian.all
  end

  # GET /guardians/1 or /guardians/1.json
  def show
  end

  # GET /guardians/new
  def new
    @guardian = Guardian.new
  end

  # GET /guardians/1/edit
  def edit
  end

  # POST /guardians or /guardians.json
  def create
    @guardian = Guardian.new(guardian_params)

    respond_to do |format|
      if @guardian.save
        format.html { redirect_to @guardian, notice: "Guardian was successfully created." }
        format.json { render :show, status: :created, location: @guardian }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @guardian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guardians/1 or /guardians/1.json
  def update
    respond_to do |format|
      if @guardian.update(guardian_params)
        format.html { redirect_to @guardian, notice: "Guardian was successfully updated." }
        format.json { render :show, status: :ok, location: @guardian }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @guardian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guardians/1 or /guardians/1.json
  def destroy
    @guardian.destroy!

    respond_to do |format|
      format.html { redirect_to guardians_path, status: :see_other, notice: "Guardian was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guardian
      @guardian = Guardian.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def guardian_params
      params.expect(guardian: [ :name, :email_address, :contact_number, :number_of_students ])
    end
end
