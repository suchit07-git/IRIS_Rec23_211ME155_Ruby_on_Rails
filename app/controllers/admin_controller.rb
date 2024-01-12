class AdminController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin_role

  def index
    @user = User.all
  end

  def assign_role
    user = User.find(params[:user_id])
    user.update(role: params[:role])
    redirect_to admin_dashboard_path
  end

  private
  def check_admin_role
    redirect_to root_path unless user.email == 'suchitk.211me155@nitk.edu.in'
  end
end
