class StudentController < ApplicationController
  before_action :authenticate_user!
  before_action :check_student_role

  def index
    @student = current_user
  end

  private
  def check_student_role
    redirect_to root_path unless current_user.role == 'student'
  end
end
