class SectionsController < ApplicationController
  before_action :set_section, only: %i[ show edit update destroy ]

  # GET /sections or /sections.json
  def index
    @sections = Section.all
  end

  # GET /sections/1 or /sections/1.json
  def show
  end

  # GET /sections/new
  def new
    @section = Section.new
  end

  # GET /sections/1/edit
  def edit
  end

  # POST /sections or /sections.json
  def create
    @section = Section.new(section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to @section, notice: "Section was successfully created." }
        format.json { render :show, status: :created, location: @section }

        @section.subject.teacher.increment!(:number_of_units, @section.subject.number_of_units)
        monthlySalary = @section.subject.teacher.number_of_units * 2000
        @section.subject.teacher.update(monthly_salary: monthlySalary)

      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sections/1 or /sections/1.json
  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to @section, notice: "Section was successfully updated." }
        format.json { render :show, status: :ok, location: @section }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sections/1 or /sections/1.json
  def destroy
    @section.destroy!

    @section.subject.teacher.decrement!(:number_of_units, @section.subject.number_of_units)
    monthlySalary = @section.subject.teacher.number_of_units * 2000
    @section.subject.teacher.update(monthly_salary: monthlySalary)
    
    respond_to do |format|
      format.html { redirect_to sections_path, status: :see_other, notice: "Section was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def section_params
      params.expect(section: [ :name, :room, :time_slot, :subject_id ])
    end
end
