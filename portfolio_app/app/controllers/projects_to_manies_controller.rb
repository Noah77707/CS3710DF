class ProjectsToManiesController < ApplicationController
  before_action :set_projects_to_many, only: %i[ show edit update destroy ]
  before_action :set_student


  # GET /projects_to_manies or /projects_to_manies.json
  def index
    @projects_to_manies = @student.projects_to_manies
  end

  # GET /projects_to_manies/1 or /projects_to_manies/1.json
  def show
    @projects_to_many = ProjectsToMany.where(student_id: params[:student_id], id: params[:id]).first
  end

  # GET /projects_to_manies/new
  def new
    @projects_to_many = @student.projects_to_manies.build
  end

  # GET /projects_to_manies/1/edit
  def edit
  end

  # POST /projects_to_manies or /projects_to_manies.json
  def create
    @project_to_many = @student.projects_to_manies.build(projects_to_many_params)

    respond_to do |format|
      if @project_to_many.save
        format.html { redirect_to student_projects_to_manies_path(@student), notice: 'Project was successfully created.'}
        format.json { render :show, status: :created, location: @projects_to_many }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @projects_to_many.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_to_manies/1 or /projects_to_manies/1.json
  def update
    respond_to do |format|
      if @projects_to_many.update(projects_to_many_params)
        format.html { redirect_to student_projects_to_manies_path(@student), notice: "Projects to many was successfully updated." }
        format.json { render :show, status: :ok, location: @projects_to_many }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @projects_to_many.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_to_manies/1 or /projects_to_manies/1.json
  def destroy
    @projects_to_many.destroy!

    respond_to do |format|
      format.html { redirect_to student_projects_to_manies_path(@student), notice: "Projects to many was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_student
    @student = Student.find_by(id: params[:student_id])  # Find student by student_id
  rescue ActiveRecord::RecordNotFound
    redirect_to students_path, alert: "Student not found"

  end

  # Use callbacks to share common setup or constraints between actions.
    def set_projects_to_many
      @projects_to_many = ProjectsToMany.where(student_id: params[:student_id], id: params[:id]).first
      if @projects_to_many.nil?
        redirect_to student_projects_to_manies_path(@student), alert: "Project not found"
      end

    end

    # Only allow a list of trusted parameters through.
    def projects_to_many_params
      params.require(:projects_to_many).permit(:title, :description)
    end
end
