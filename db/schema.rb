# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160110083057) do

  create_table "explanations", force: :cascade do |t|
    t.string   "ExplanationContent"
    t.integer  "UpdatedUser_id"
    t.datetime "LastUpdate"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "explanations", ["UpdatedUser_id"], name: "index_explanations_on_UpdatedUser_id"

  create_table "goalpoints", force: :cascade do |t|
    t.string   "GoalpointName"
    t.string   "GoalpointSpendTime"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "maps", force: :cascade do |t|
    t.float    "lat"
    t.float    "lon"
    t.string   "address"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "mapable_id"
    t.string   "mapable_type"
  end

  create_table "nextpoints", force: :cascade do |t|
    t.string   "NextpointName"
    t.integer  "NextpointRequiredTime"
    t.string   "NextpointTransportation"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "point_pictures", force: :cascade do |t|
    t.string   "PointPictureImage"
    t.integer  "PostingUser_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "point_pictures", ["PostingUser_id"], name: "index_point_pictures_on_PostingUser_id"

  create_table "startpoints", force: :cascade do |t|
    t.string   "StartpointName"
    t.integer  "StartpointSpendTime"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "transitpoints", force: :cascade do |t|
    t.string   "TransitpointName"
    t.integer  "TransitpointSpendTime"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "user_relationships", force: :cascade do |t|
    t.integer  "favorite_user_id"
    t.integer  "favorited_user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "user_relationships", ["favorite_user_id", "favorited_user_id"], name: "user_favorite_relalationship_index", unique: true
  add_index "user_relationships", ["favorite_user_id"], name: "index_user_relationships_on_favorite_user_id"
  add_index "user_relationships", ["favorited_user_id"], name: "index_user_relationships_on_favorited_user_id"

  create_table "user_routes", force: :cascade do |t|
    t.integer  "total_time"
    t.string   "UserRouteName"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
