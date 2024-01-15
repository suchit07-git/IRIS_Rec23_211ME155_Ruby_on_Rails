class Student::DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
    @student_profiles = StudentProfile.all
    @student_profile = StudentProfile.find_by(user_id: current_user.id)
    @available_courses = Course.find_by(dept: current_user.student_profile.dept)
    @StudentRegistration = StudentRegistration.where(student_name: current_user.student_profile.name)
    @registered_courses = @StudentRegistration.where(student_name: current_user.student_profile.name)
    @user = User.new
  end

  def show_courses
    @StudentRegistration = StudentRegistration.where(student_name: current_user.student_profile.name)
    @registered_courses = @StudentRegistration.where(student_name: current_user.student_profile.name)
  end

  def course_registration
    @available_courses = Course.where(dept: current_user.student_profile.dept)
  end

  def create_course_registration
    @student = current_user.student_profile
    selected_course_ids = params[:id]

    if @student && selected_course_ids
      @student.courses << Course.find(selected_course_codes)
      redirect_to student_dashboard_path, notice: 'Courses registered successfully!'
    else
      redirect_to student_course_registration_path, alert: 'Failed to register for courses.'
    end
  end

  # def edit_profile
  #   @student = Student.new
  # end

  # def update_profile
  #   # @student = Student.new(student_params)
  #   @student = current_user.student.build(student_params)
  #   if @student.save
  #     redirect_to student_dashboard_path, notice: 'Profile updated successfully.'
  #   else
  #     puts "Validation errors: #{@student.errors.full_messages}"
  #     render :edit_profile
  #   end
  # end

  # def student_params
  #   params.permit(:name, :email_id, :dept, :roll_no, :program, :cgpa, :user_id)
  # end
end
