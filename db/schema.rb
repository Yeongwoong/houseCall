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

ActiveRecord::Schema.define(version: 2018_12_13_063331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cases", force: :cascade do |t|
    t.bigint "request_id"
    t.bigint "doctor_id"
    t.bigint "disease_id"
    t.bigint "prescription_id"
    t.datetime "arrived_date_time"
    t.datetime "done_date_time"
    t.string "doctor_comment"
    t.integer "charged_bill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disease_id"], name: "index_cases_on_disease_id"
    t.index ["doctor_id"], name: "index_cases_on_doctor_id"
    t.index ["prescription_id"], name: "index_cases_on_prescription_id"
    t.index ["request_id"], name: "index_cases_on_request_id"
  end

  create_table "cases_diseases", id: false, force: :cascade do |t|
    t.bigint "case_id", null: false
    t.bigint "disease_id", null: false
  end

  create_table "diseases", force: :cascade do |t|
    t.string "code", limit: 40
    t.string "name_kor"
    t.string "name_eng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseases_patients", id: false, force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "disease_id", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.bigint "specialist_id"
    t.string "kakao_id"
    t.string "license_number"
    t.integer "gender"
    t.datetime "birthday"
    t.string "career"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["specialist_id"], name: "index_doctors_on_specialist_id"
  end

  create_table "doctors_gu_regions", id: false, force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "gu_region_id", null: false
  end

  create_table "doctors_timetables", id: false, force: :cascade do |t|
    t.bigint "doctor_id", null: false
    t.bigint "timetable_id", null: false
  end

  create_table "families", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "family_roles", force: :cascade do |t|
    t.string "name", limit: 40
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gu_regions", force: :cascade do |t|
    t.string "name", limit: 40
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "code"
    t.string "name_kor"
    t.string "name_eng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicines_patients", id: false, force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "medicine_id", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.bigint "family_id"
    t.bigint "disease_id"
    t.bigint "medicine_id"
    t.bigint "family_role_id"
    t.string "kakao_id"
    t.string "name", limit: 40
    t.string "road_addr"
    t.string "family_history"
    t.datetime "birthday"
    t.integer "gender"
    t.integer "height"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disease_id"], name: "index_patients_on_disease_id"
    t.index ["family_id"], name: "index_patients_on_family_id"
    t.index ["family_role_id"], name: "index_patients_on_family_role_id"
    t.index ["medicine_id"], name: "index_patients_on_medicine_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.bigint "medicine_id"
    t.decimal "volume", precision: 16, scale: 1
    t.string "method"
    t.integer "duration_day"
    t.integer "treat_per_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medicine_id"], name: "index_prescriptions_on_medicine_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.decimal "kindness_score", precision: 16, scale: 1
    t.decimal "professionalism_score", precision: 16, scale: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "symptom_id"
    t.bigint "specialist_id"
    t.datetime "requested_time"
    t.datetime "reservation_time"
    t.integer "reservation_duration_min", default: 30
    t.boolean "is_matched", default: false
    t.integer "estimated_bill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_requests_on_patient_id"
    t.index ["specialist_id"], name: "index_requests_on_specialist_id"
    t.index ["symptom_id"], name: "index_requests_on_symptom_id"
  end

  create_table "specialists", force: :cascade do |t|
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "symptoms", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.string "weekday", limit: 40
    t.string "time_start"
    t.string "time_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cases", "diseases"
  add_foreign_key "cases", "doctors"
  add_foreign_key "cases", "prescriptions"
  add_foreign_key "cases", "requests"
  add_foreign_key "doctors", "specialists"
  add_foreign_key "patients", "diseases"
  add_foreign_key "patients", "families"
  add_foreign_key "patients", "family_roles"
  add_foreign_key "patients", "medicines"
  add_foreign_key "prescriptions", "medicines"
  add_foreign_key "requests", "patients"
  add_foreign_key "requests", "specialists"
  add_foreign_key "requests", "symptoms"
end
