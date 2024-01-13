class Student < ApplicationRecord
  validates :name, :email_id, :dept, :program, :roll_no, presence: true
  validates :email_id, uniqueness: true
  has_secure_password
end
