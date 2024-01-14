class RegistrationsController < ApplicationController
  before_action :set_course, only: [:create, :destroy]
	def create
    if @course.registrations.count < @course.max_students
      current_student.courses << @course
      redirect_to student_dashboard_path, notice: 'Successfully registered for the course.'
    else
      redirect_to student_dashboard_path, alert: 'Course is full. Unable to register.'
    end
  end
  def destroy
    current_student.courses.delete(@course)
    redirect_to student_dashboard_path, notice: 'Successfully unregistered from the course.'
  end
  private

  def set_course
    @course = Course.find(params[:course_id])
  end
end
