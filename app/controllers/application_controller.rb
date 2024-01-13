class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.role == 'admin'
      puts "Admin signed in. Redirecting to admin_path."
      admin_root_path
    elsif current_user.role == 'student'
      student_dashboard_path
    elsif current_user.role == 'faculty'
      faculty_dashboard_path
    else
      puts "User signed in. Using default behavior.#{current_user.role}"
      super
    end
  end
end
