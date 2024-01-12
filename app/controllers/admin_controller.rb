class AdminController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.all
  end

  def assign_role
    user = User.find(params[:user_id])
    user.update(role: params[:role])
    redirect_to admin_dashboard_path
  end
end
