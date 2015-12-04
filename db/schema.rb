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

ActiveRecord::Schema.define(:version => 20150716172312) do

  create_table "challenges", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "one_tests", :force => true do |t|
    t.string   "submission_type"
    t.string   "live_test_flat"
    t.string   "cik"
    t.string   "ccc"
    t.string   "return_copy_flag"
    t.string   "override_internal_flag"
    t.string   "contact_name"
    t.string   "contact_phone_number"
    t.string   "contact_email_address"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "two_tests", :force => true do |t|
    t.string   "submission_type"
    t.string   "live_test_flat"
    t.string   "cik"
    t.string   "ccc"
    t.string   "return_copy_flag"
    t.string   "override_internal_flag"
    t.string   "contact_name"
    t.string   "contact_phone_number"
    t.string   "contact_email_address"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "works", :force => true do |t|
    t.string   "job_name"
    t.integer  "form_list"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
