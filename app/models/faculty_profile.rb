class FacultyProfile < ApplicationRecord
	belongs_to :user
	has_many :courses
	validates_uniqueness_of :id
end
