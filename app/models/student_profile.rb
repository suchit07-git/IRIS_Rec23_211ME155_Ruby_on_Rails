class StudentProfile < ApplicationRecord
	belongs_to :user
  validates_uniqueness_of :id
  has_many :registrations
  has_many :courses
end
