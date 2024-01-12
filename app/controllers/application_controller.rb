class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.role == 'admin'
      puts "Admin signed in. Redirecting to admin_path."
      admin_root_path
    else
      puts "User signed in. Using default behavior."
      super
    end
  end
end
