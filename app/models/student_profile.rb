class StudentProfile < ApplicationRecord
	# belongs_to :student
  validates_uniqueness_of :id

end
