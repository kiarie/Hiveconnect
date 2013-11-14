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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131113125207) do

  create_table "hives", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "hives", ["email"], :name => "index_hives_on_email", :unique => true
  add_index "hives", ["remember_token"], :name => "index_hives_on_remember_token"

  create_table "microposts", :force => true do |t|
    t.string   "content"
    t.integer  "hive_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["hive_id", "created_at"], :name => "index_microposts_on_hive_id_and_created_at"

end
