class CreateStudentProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :student_profiles do |t|
      t.string :name
      t.string :email_id
      t.string :dept
      t.string :program
      t.string :roll_no
      t.float :cgpa

      t.timestamps
    end
  end
end
