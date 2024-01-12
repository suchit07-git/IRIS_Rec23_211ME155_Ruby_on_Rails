class CustomRegistrationsController < Devise::RegistrationsController
  def create
    super do |user|
      user.assign_admin_role
      user.save
    end
  end
end
