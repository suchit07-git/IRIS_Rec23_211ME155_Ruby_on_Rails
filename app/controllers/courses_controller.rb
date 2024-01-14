class CoursesController < ApplicationController
  before_action :set_course, only: %i[ show edit update destroy ]

  # GET /courses or /courses.json
  def index
    @courses = Course.all
    @faculty_profile = FacultyProfile.find_by(user_id: current_user.id)
    @course.update(dept: current_user.faculty_profile.dept)
    @course.update(user_id: current_user.faculty_profile.user_id)
  end

  # GET /courses/1 or /courses/1.json
  def show
    # @spots_available = @course.spots_available?
  end


  # GET /courses/new
  def new
    @course = Course.new
    
  end

  def register
    # if @course.spots_available?
    #   current_student.courses << @course
    #   redirect_to student_dashboard_path, notice: 'Successfully registered for the course.'
    # else
    #   redirect_to student_dashboard_path, alert: 'No spots available for this course.'
    # end
  end

  # GET /courses/1/edit
  def edit
  end

  # POST /courses or /courses.json
  def create
    @course = Course.new(course_params.merge(dept: current_user.faculty_profile.dept, user_id: current_user.id))
    @course.update(dept: current_user.faculty_profile.dept)
    @course.update(user_id: current_user.faculty_profile.user_id)

    respond_to do |format|
      if @course.save
        format.html { redirect_to course_url(@course), notice: "Course was successfully created." }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1 or /courses/1.json
  def update
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to course_url(@course), notice: "Course was successfully updated." }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1 or /courses/1.json
  def destroy
    @course.destroy!

    respond_to do |format|
      format.html { redirect_to faculty_dashboard_path, notice: "Course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_params
      params.require(:course).permit(:course_code, :course_title, :instructor, :schedule, :credits, :max_students, :user_id, :dept)
    end
end
