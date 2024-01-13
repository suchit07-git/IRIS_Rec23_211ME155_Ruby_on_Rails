class FacultyController < ApplicationController
  before_action :authenticate_user!
  before_action :check_faculty_role
  def index

  end

  private
  def check_faculty_role
    redirect_to root_path unless current_user.role == 'faculty'
  end
end
