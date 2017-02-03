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

ActiveRecord::Schema.define(version: 20170203110942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "insiders", force: :cascade do |t|
    t.string   "fullname"
    t.string   "national_id"
    t.string   "email"
    t.string   "telephone"
    t.decimal  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["email"], name: "index_insiders_on_email", unique: true, using: :btree
    t.index ["national_id"], name: "index_insiders_on_national_id", unique: true, using: :btree
    t.index ["telephone"], name: "index_insiders_on_telephone", unique: true, using: :btree
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "tour_id"
    t.integer  "tourist_id"
    t.integer  "insider_id"
    t.decimal  "amount"
    t.boolean  "complete",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insider_id"], name: "index_payments_on_insider_id", using: :btree
    t.index ["tour_id"], name: "index_payments_on_tour_id", using: :btree
    t.index ["tourist_id"], name: "index_payments_on_tourist_id", using: :btree
  end

  create_table "ratings", force: :cascade do |t|
    t.integer  "tour_id"
    t.integer  "tourist_id"
    t.decimal  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tour_id"], name: "index_ratings_on_tour_id", using: :btree
    t.index ["tourist_id"], name: "index_ratings_on_tourist_id", using: :btree
  end

  create_table "tourists", force: :cascade do |t|
    t.string   "fullname"
    t.string   "email"
    t.string   "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_tourists_on_email", unique: true, using: :btree
    t.index ["telephone"], name: "index_tourists_on_telephone", unique: true, using: :btree
  end

  create_table "tours", force: :cascade do |t|
    t.integer  "tourist_id"
    t.integer  "insider_id"
    t.text     "activities"
    t.decimal  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["insider_id"], name: "index_tours_on_insider_id", using: :btree
    t.index ["tourist_id"], name: "index_tours_on_tourist_id", using: :btree
  end

end
