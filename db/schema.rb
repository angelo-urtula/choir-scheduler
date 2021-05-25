# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_21_134428) do

  create_table "choir_leaders", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "home_locale"
    t.string "email"
    t.string "phone_number"
    t.string "district"
    t.string "voice"
    t.boolean "organist"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "choir_members", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "uid"
    t.string "provider"
    t.string "name"
    t.string "voice"
    t.integer "height"
    t.string "home_locale"
    t.integer "age"
    t.string "phone_number"
    t.string "district"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "practice_times", force: :cascade do |t|
    t.integer "choir_member_id"
    t.integer "choir_leader_id"
    t.string "language"
    t.datetime "time"
    t.string "locale"
    t.string "hymns"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
