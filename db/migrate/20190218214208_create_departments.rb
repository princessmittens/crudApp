class CreateDepartments < ActiveRecord::Migration[5.1]
  def change
    create_table :departments do |t|
      t.string :departmentNumber_94
      t.string :departmentName_94
      t.string :phoneNumber_94

      t.timestamps
    end
  end
end
