class FacultyProfile < ApplicationRecord
	validates_uniqueness_of :id
end
