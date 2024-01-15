class Course < ApplicationRecord
	# belongs_to :faculty
	validates :max_students, numericality: { greater_than_or_equal_to: 0 }
	# def spots_available?
  	# 	current_students < max_students
	# end
	has_many :registrations
	has_many :students, through: :registrations
	serialize :registrations, Array, coder: JSON

	def register_student(student_name)
	    self.registrations ||= []
	    self.registrations << student_name
	    save
  	end
  	has_and_belongs_to_many :students
end