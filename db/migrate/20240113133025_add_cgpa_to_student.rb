class AddCgpaToStudent < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :cgpa, :float
  end
end
