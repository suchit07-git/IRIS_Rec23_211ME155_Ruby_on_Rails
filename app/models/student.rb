class Student < ApplicationRecord
  validates :name, :email_id, :dept, :program, :roll_no, presence: true
  validates :email_id, uniqueness: false
  belongs_to :user
  has_many :registrations
  has_many :courses, through: :registrations
  has_one :student_profile
end
