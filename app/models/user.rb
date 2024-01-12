class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { admin: 'admin', student: 'student', faculty: 'faculty'}

  def admin?
    role == 'admin'
  end
  def student?
    role == 'student'
  end
  def faculty?
    role == 'faculty'
  end
end
