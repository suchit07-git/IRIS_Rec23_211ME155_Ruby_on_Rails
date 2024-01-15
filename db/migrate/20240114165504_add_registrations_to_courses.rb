class AddRegistrationsToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :registrations, :text
  end
end
