# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_14_212234) do

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "sex"
    t.integer "father_id"
    t.integer "mother_id"
    t.integer "current_spouse_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "birth_date"
    t.date "death_date"
    t.index ["father_id", "mother_id"], name: "index_people_on_father_id_and_mother_id"
    t.index ["father_id"], name: "index_people_on_father_id"
    t.index ["mother_id"], name: "index_people_on_mother_id"
    t.index ["sex"], name: "index_people_on_sex"
  end

end
