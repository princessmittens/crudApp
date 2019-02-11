# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "departments", primary_key: "departmentNumber_94", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci" do |t|
    t.string "departmentName_94", limit: 50
    t.string "phoneNumber_94", limit: 50
  end

  create_table "employees", primary_key: "employeeNumber_94", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci" do |t|
    t.string "lastName_94", limit: 50
    t.string "firstName_94", limit: 50
    t.string "position_94", limit: 50
    t.string "departmentNumber_94", limit: 50
    t.date "startDate_94"
    t.integer "salary_94"
    t.index ["departmentNumber_94"], name: "departmentNumber-94"
  end

  add_foreign_key "employees", "departments", column: "departmentNumber_94", primary_key: "departmentNumber_94", name: "employees_ibfk_1"
end
