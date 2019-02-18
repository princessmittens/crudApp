class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :employeeNumber_94
      t.string :lastName_94
      t.string :firstName_94
      t.string :position_94
      t.string :departmentNumber_94
      t.date :startDate_94
      t.integer :salary_94

      t.timestamps
    end
  end
end
