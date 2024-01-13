class Student::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:index, :edit_profile, :update_profile]

  def index
  end
  def edit_profile
  end

  def update_profile
    if @user.update(user_params)
      redirect_to student_dashboard_path, notice: 'Profile updated successfully.'
    else
      render :edit_profile
    end
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :email, :department, :program_type, :roll_no)
  end
end
