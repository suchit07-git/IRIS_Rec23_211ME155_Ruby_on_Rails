class CreateFacultyProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :faculty_profiles do |t|
      t.string :name
      t.string :email_id
      t.string :dept
      t.string :staff_id

      t.timestamps
    end
  end
end
