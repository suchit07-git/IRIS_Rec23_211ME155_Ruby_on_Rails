class CreateStudentRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :student_registrations do |t|
      t.string :course_code
      t.string :student_name

      t.timestamps
    end
  end
end
