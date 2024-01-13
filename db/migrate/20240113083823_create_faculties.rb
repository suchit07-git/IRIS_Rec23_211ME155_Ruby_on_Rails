class CreateFaculties < ActiveRecord::Migration[7.1]
  def change
    create_table :faculties do |t|
      t.string :name
      t.string :email_id
      t.string :dept
      t.string :staff_id
      t.string :password

      t.timestamps
    end
  end
end
