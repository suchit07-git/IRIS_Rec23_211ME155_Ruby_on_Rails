class StudentController < ApplicationController
  before_action :authenticate_user!
  before_action :check_student_role

  def index

  end

  private
  def check_student_role
    redirect_to root_path unless current_user.student?
  end
end
