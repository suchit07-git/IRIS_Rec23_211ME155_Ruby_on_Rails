class StudentProfile < ApplicationRecord
	belongs_to :user
  validates_uniqueness_of :id
end
