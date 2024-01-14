class AddDeptToCourses < ActiveRecord::Migration[7.1]
  def change
    add_column :courses, :dept, :string
  end
end
