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

ActiveRecord::Schema.define(version: 20170308173714) do

  create_table "equipments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipments_exercises", id: false, force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "equipment_id"
    t.index ["exercise_id", "equipment_id"], name: "index_equipments_exercises_on_exercise_id_and_equipment_id"
  end

  create_table "etypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "etypes_exercises", id: false, force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "etypes_id"
    t.index ["exercise_id", "etypes_id"], name: "index_etypes_exercises_on_exercise_id_and_etypes_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "cosa"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises_muscles", id: false, force: :cascade do |t|
    t.integer "exercise_id"
    t.integer "muscle_id"
    t.index ["exercise_id", "muscle_id"], name: "index_exercises_muscles_on_exercise_id_and_muscle_id"
  end

  create_table "muscles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
