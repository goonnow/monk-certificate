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

ActiveRecord::Schema.define(version: 20140125084603) do

  create_table "monks", force: true do |t|
    t.integer  "cert_no"
    t.string   "firstname"
    t.string   "surname"
    t.string   "monkname"
    t.date     "birthdate"
    t.float    "height"
    t.string   "skin"
    t.datetime "ordained_time"
    t.string   "ordainer"
    t.string   "pair_monk_1"
    t.string   "pair_monk_2"
    t.string   "approval_name"
    t.string   "approval_position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.string   "id_no"
  end

  create_table "users", force: true do |t|
    t.string   "avatar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
