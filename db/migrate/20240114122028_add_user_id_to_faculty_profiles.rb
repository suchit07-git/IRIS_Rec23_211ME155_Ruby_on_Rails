class AddUserIdToFacultyProfiles < ActiveRecord::Migration[7.1]
  def change
    add_reference :faculty_profiles, :user, foreign_key: true
  end
end
