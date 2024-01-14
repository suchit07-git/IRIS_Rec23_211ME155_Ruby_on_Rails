class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :course_code
      t.string :course_title
      t.string :instructor
      t.string :schedule
      t.integer :credits

      t.timestamps
    end
  end
end
