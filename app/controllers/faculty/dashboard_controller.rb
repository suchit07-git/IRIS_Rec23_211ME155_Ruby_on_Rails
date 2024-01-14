class Faculty::DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @courses = Course.all
    @new_course = Course.new
    @faculy_profiles = StudentProfile.all
    @faculty_profile = FacultyProfile.find_by(user_id: current_user.id)
    @user = User.new
  end
  def create_course
    @new_course = current_faculty.courses.build(course_params)
    if @new_course.save
      redirect_to faculty_dashboard_path, notice: 'Course created successfully.'
    else
      render :index
    end
  end
  def edit_course
    @course = Course.find(params[:id])
  end
  def update_course
    @course = Course.find(params[:id])
    if @course.update(course_params)
      redirect_to faculty_dashboard_path, notice: 'Course updated successfully.'
    else
      render :edit_course
    end
  end
  def destroy_course
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to faculty_dashboard_path, notice: 'Course deleted successfully.'
  end

  private

  def course_params
    params.require(:course).permit(:course_code, :course_title, :instructor, :schedule, :credits, :max_students)
  end
end
