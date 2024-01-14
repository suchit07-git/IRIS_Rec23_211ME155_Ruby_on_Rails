class Student::DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
    @student_profiles = StudentProfile.all
    @student_profile = StudentProfile.find_by(user_id: current_user.id)
    @user = User.new
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
