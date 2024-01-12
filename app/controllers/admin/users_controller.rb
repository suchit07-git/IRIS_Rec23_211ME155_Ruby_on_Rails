class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin_role
  before_action :set_user, only: [:edit, :update]

  def index
    @users = User.all
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to admin_users_path, notice: 'User updated successfully.'
    else
      render :edit
    end
  end

  private

  def check_admin_role
    redirect_to root_path, alert: 'Access denied.' unless current_user&.admin?
  end

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:role)
  end
end
