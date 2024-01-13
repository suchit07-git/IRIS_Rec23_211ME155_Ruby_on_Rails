class Faculty < ApplicationRecord
  validates :name, :email_id, :dept, :staff_id, presence: true
  validates :email_id, uniqueness: true
  has_secure_password
end
