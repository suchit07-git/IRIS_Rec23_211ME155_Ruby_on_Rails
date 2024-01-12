class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { user: 'user', admin: 'admin', student: 'student', faculty: 'faculty' }

  before_save :assign_admin_role

  def assign_admin_role
    self.role = :admin if email == 'suchitk.211me155@nitk.edu.in'
  end

  # def admin?
  #   role == 'admin'
  # end
  # def student?
  #   role == 'student'
  # end
  # def faculty?
  #   role == 'faculty'
  # end
end
