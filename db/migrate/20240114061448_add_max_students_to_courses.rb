class AddMaxStudentsToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :max_students, :integer
  end
end
