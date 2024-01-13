class CreateStudents < ActiveRecord::Migration[7.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email_id
      t.string :dept
      t.string :program
      t.string :roll_no
      t.string :password

      t.timestamps
    end
  end
end
