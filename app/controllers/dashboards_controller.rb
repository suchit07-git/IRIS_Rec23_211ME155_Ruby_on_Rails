class DashboardsController < ApplicationController
  before_action :authenticate_user!
  def show
    if current_user.admin?
      redirect_to admin_dashboard
    elsif current_user.student?
      redirect_to student_dashboard
    elsif current_user.faculty?
      redirect_to faculty_dashboard
    else
      redirect_to index_path
    end
  end
end
