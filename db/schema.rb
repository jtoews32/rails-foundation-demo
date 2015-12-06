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

ActiveRecord::Schema.define(:version => 20151206012946) do

  create_table "a_account", :primary_key => "account_id", :force => true do |t|
    t.string  "name",    :default => "", :null => false
    t.integer "note_id", :default => 0,  :null => false
    t.integer "type",    :default => 0,  :null => false
  end

  create_table "a_action_trigger", :primary_key => "action_trigger_id", :force => true do |t|
    t.string    "name",          :default => "", :null => false
    t.string    "function_name", :default => "", :null => false
    t.timestamp "created",                       :null => false
    t.timestamp "trigger_date",                  :null => false
  end

  create_table "a_address", :primary_key => "address_id", :force => true do |t|
    t.string    "address",    :default => "", :null => false
    t.string    "city",       :default => "", :null => false
    t.string    "state",      :default => "", :null => false
    t.string    "country",    :default => "", :null => false
    t.string    "zip",        :default => "", :null => false
    t.integer   "demo",       :default => 0,  :null => false
    t.integer   "active",     :default => 1,  :null => false
    t.timestamp "created",                    :null => false
    t.integer   "company_id"
    t.integer   "user_id"
  end

  add_index "a_address", ["company_id"], :name => "company_id", :unique => true
  add_index "a_address", ["user_id"], :name => "user_id", :unique => true

  create_table "a_company", :primary_key => "company_id", :force => true do |t|
    t.string    "name",                                       :default => "",             :null => false
    t.string    "email",                                      :default => "",             :null => false
    t.string    "phone",                                      :default => "",             :null => false
    t.string    "address_id",                                 :default => "",             :null => false
    t.integer   "round_id",                                   :default => 0,              :null => false
    t.string    "url",                                        :default => "",             :null => false
    t.string    "formation",                                  :default => "Undecided",    :null => false
    t.string    "round",                                      :default => "Concept/Idea", :null => false
    t.string    "ein",                                        :default => "",             :null => false
    t.timestamp "created",                                                                :null => false
    t.integer   "pre_money_value",                            :default => 0,              :null => false
    t.integer   "post_money_value",                           :default => 0,              :null => false
    t.integer   "common_issued",                              :default => 0,              :null => false
    t.integer   "common_outstanding",                         :default => 0,              :null => false
    t.integer   "common_authorized",                          :default => 0,              :null => false
    t.integer   "preferred_authorized",                       :default => 0,              :null => false
    t.integer   "preferred_issued",                           :default => 0,              :null => false
    t.integer   "options_on_common",                          :default => 0,              :null => false
    t.integer   "warrants_on_common",                         :default => 0,              :null => false
    t.integer   "common_treasury",                            :default => 0,              :null => false
    t.float     "common_par",                   :limit => 11, :default => 0.0,            :null => false
    t.float     "preferred_par",                :limit => 11, :default => 0.0,            :null => false
    t.float     "company_value",                :limit => 10, :default => 0.0,            :null => false
    t.integer   "option_pool",                                :default => 0,              :null => false
    t.float     "common_strike",                :limit => 10, :default => 0.0,            :null => false
    t.integer   "hybrid_preferred",                           :default => 0,              :null => false
    t.integer   "participating_outstanding",                  :default => 0,              :null => false
    t.integer   "nonparticipating_outstanding",               :default => 0,              :null => false
    t.integer   "hybrid_outstanding",                         :default => 0,              :null => false
    t.integer   "convertable_note_outstanding",               :default => 0,              :null => false
    t.integer   "bond_outstanding",                           :default => 0,              :null => false
    t.integer   "demo",                                       :default => 0,              :null => false
    t.integer   "active",                                     :default => 1,              :null => false
    t.integer   "reg_a_status",                               :default => 0,              :null => false
    t.integer   "live",                                       :default => 1,              :null => false
    t.integer   "employees_sought_amt",                       :default => 0,              :null => false
    t.integer   "employee_amt",                               :default => 0,              :null => false
    t.integer   "year_incorporated",                          :default => 0,              :null => false
    t.string    "industry",                                   :default => "",             :null => false
    t.string    "sec_contact",                                :default => "",             :null => false
    t.integer   "sec_contact_address_id"
    t.integer   "tier",                                       :default => 1,              :null => false
    t.text      "securities_offered",                                                     :null => false
    t.integer   "total_offered",                              :default => 0,              :null => false
    t.integer   "total_sold",                                 :default => 0,              :null => false
    t.integer   "total_remaining",                            :default => 0,              :null => false
    t.text      "form_d",                                                                 :null => false
    t.integer   "minimum_investment",                         :default => 0,              :null => false
    t.string    "cik",                                        :default => "",             :null => false
    t.string    "revenue_range",                              :default => "",             :null => false
    t.timestamp "first_sale",                                                             :null => false
    t.integer   "investor_count",                             :default => 0,              :null => false
    t.integer   "proceeds_used",                              :default => 0,              :null => false
  end

  create_table "a_company_equity", :primary_key => "company_equity_id", :force => true do |t|
    t.integer   "common_issued",                              :default => 0,   :null => false
    t.integer   "common_outstanding",                         :default => 0,   :null => false
    t.integer   "common_authorized",                          :default => 0,   :null => false
    t.integer   "preferred_authorized",                       :default => 0,   :null => false
    t.integer   "preferred_issued",                           :default => 0,   :null => false
    t.integer   "options_on_common",                          :default => 0,   :null => false
    t.integer   "warrants_on_common",                         :default => 0,   :null => false
    t.integer   "common_treasury",                            :default => 0,   :null => false
    t.integer   "company_id"
    t.timestamp "created",                                                     :null => false
    t.float     "common_par",                   :limit => 12
    t.float     "preferred_par",                :limit => 5,  :default => 0.0, :null => false
    t.float     "company_value"
    t.integer   "option_pool",                                :default => 0,   :null => false
    t.float     "common_strike",                              :default => 0.0, :null => false
    t.integer   "hybrid_preferred",                           :default => 0,   :null => false
    t.integer   "participating_outstanding",                  :default => 0,   :null => false
    t.integer   "nonparticipating_outstanding",               :default => 0,   :null => false
    t.integer   "hybrid_outstanding",                         :default => 0,   :null => false
    t.integer   "convertable_note_outstanding",               :default => 0,   :null => false
    t.integer   "bond_outstanding",                           :default => 0,   :null => false
  end

  create_table "a_contact", :primary_key => "contact_id", :force => true do |t|
    t.string    "name",                          :default => "", :null => false
    t.string    "email",                         :default => "", :null => false
    t.text      "message", :limit => 2147483647,                 :null => false
    t.timestamp "created",                                       :null => false
  end

  create_table "a_equity_round", :primary_key => "equity_round_id", :force => true do |t|
    t.timestamp "created",                          :null => false
    t.timestamp "close_date",                       :null => false
    t.float     "amt"
    t.integer   "transaction_id"
    t.integer   "company_id"
    t.integer   "action_trigger_id"
    t.integer   "user_id",                          :null => false
    t.integer   "trigger_const",     :default => 0, :null => false
    t.integer   "round_const",       :default => 0, :null => false
  end

  create_table "a_job", :primary_key => "job_id", :force => true do |t|
    t.integer   "company_id",                             :null => false
    t.string    "name",                   :default => "", :null => false
    t.string    "link",                   :default => "", :null => false
    t.timestamp "created",                                :null => false
    t.timestamp "open",                                   :null => false
    t.text      "skills",                                 :null => false
    t.string    "contact",                :default => "", :null => false
    t.integer   "active",                 :default => 1,  :null => false
    t.integer   "cities_select_id",       :default => 0,  :null => false
    t.integer   "requirement_select_id",  :default => 0,  :null => false
    t.integer   "compensation_select_id", :default => 0,  :null => false
    t.string    "contact_email"
    t.string    "contact_url"
    t.integer   "user_id"
    t.string    "company"
    t.integer   "nonaccount_listing",     :default => 0,  :null => false
  end

  create_table "a_journal", :primary_key => "journal_id", :force => true do |t|
    t.integer "company_id",     :null => false
    t.integer "transaction_id", :null => false
  end

  create_table "a_lookup", :primary_key => "lookup_id", :force => true do |t|
    t.integer "const_id", :default => 0,  :null => false
    t.string  "name",     :default => "", :null => false
    t.text    "data",                     :null => false
  end

  create_table "a_message", :primary_key => "message_id", :force => true do |t|
    t.string    "name",                          :default => "", :null => false
    t.string    "email",                         :default => "", :null => false
    t.text      "message", :limit => 2147483647,                 :null => false
    t.timestamp "created",                                       :null => false
  end

  create_table "a_note", :primary_key => "note_id", :force => true do |t|
    t.integer   "company_id",            :default => 0,   :null => false
    t.float     "bond_price",            :default => 0.0, :null => false
    t.float     "bond_duration",         :default => 0.0, :null => false
    t.float     "bond_rate",             :default => 0.0, :null => false
    t.integer   "bond_zero",             :default => 0,   :null => false
    t.integer   "converts_to_debt",      :default => 0,   :null => false
    t.integer   "converts_to_preferred", :default => 0,   :null => false
    t.integer   "converts_to_common",    :default => 0,   :null => false
    t.integer   "conversion_ratio",      :default => 0,   :null => false
    t.integer   "is_preferred",          :default => 0,   :null => false
    t.integer   "is_note",               :default => 0,   :null => false
    t.integer   "is_hybrid",             :default => 0,   :null => false
    t.integer   "is_convertable",        :default => 0,   :null => false
    t.integer   "converts_to_options",   :default => 0,   :null => false
    t.integer   "converts_to_warrents",  :default => 0,   :null => false
    t.integer   "conversion_round_id",   :default => 0,   :null => false
    t.timestamp "created",                                :null => false
    t.timestamp "conversion_date",                        :null => false
    t.integer   "vests",                 :default => 0,   :null => false
    t.integer   "is_vested",             :default => 0,   :null => false
    t.integer   "vesting_schedule_id",   :default => 0,   :null => false
    t.integer   "is_junior",             :default => 0,   :null => false
    t.integer   "is_senior",             :default => 0,   :null => false
    t.integer   "is_terminated",         :default => 0,   :null => false
    t.integer   "preferred_shares_cnt",  :default => 0,   :null => false
    t.float     "cost",                  :default => 0.0, :null => false
    t.integer   "user_id",               :default => 0,   :null => false
    t.integer   "is_dividend_note",      :default => 0,   :null => false
    t.integer   "transaction_id",        :default => 0,   :null => false
    t.integer   "conversion_trigger_id", :default => 0,   :null => false
  end

  create_table "a_onsale", :primary_key => "onsale_id", :force => true do |t|
    t.integer   "company_id",                          :null => false
    t.string    "name",               :default => "",  :null => false
    t.integer   "equity_type",        :default => 0,   :null => false
    t.float     "pps"
    t.integer   "onsale",             :default => 1,   :null => false
    t.integer   "qnt",                :default => 0,   :null => false
    t.integer   "active",             :default => 1,   :null => false
    t.integer   "pre_miniipo_ad",     :default => 0,   :null => false
    t.timestamp "created",                             :null => false
    t.timestamp "mini_ipo",                            :null => false
    t.text      "summary"
    t.timestamp "available_for_sale",                  :null => false
    t.integer   "nonaccount_listing", :default => 0,   :null => false
    t.float     "pre_money_value",    :default => 0.0, :null => false
    t.integer   "colleagues_only",    :default => 0,   :null => false
  end

  add_index "a_onsale", ["company_id"], :name => "company_id"

  create_table "a_order_book", :primary_key => "order_book_id", :force => true do |t|
    t.integer   "company_id",   :default => -1, :null => false
    t.integer   "user_id",      :default => -1, :null => false
    t.string    "company_name", :default => "", :null => false
    t.timestamp "created",                      :null => false
    t.integer   "onsale_id",    :default => 0,  :null => false
    t.integer   "order_type",   :default => 0,  :null => false
    t.integer   "no_account",   :default => 0,  :null => false
    t.integer   "active",       :default => 1,  :null => false
    t.integer   "job_id",       :default => -1, :null => false
  end

  add_index "a_order_book", ["company_id", "user_id", "onsale_id"], :name => "company_sale_user_id", :unique => true

  create_table "a_round", :primary_key => "round_id", :force => true do |t|
    t.string "name", :default => "", :null => false
  end

  create_table "a_sale", :primary_key => "sale_id", :force => true do |t|
    t.integer "company_id",                          :null => false
    t.string  "name",               :default => "",  :null => false
    t.integer "quantity_available"
    t.float   "pps",                :default => 0.0, :null => false
  end

  create_table "a_transaction", :primary_key => "transaction_id", :force => true do |t|
    t.integer   "company_id",                   :null => false
    t.integer   "user_id",                      :null => false
    t.string    "journal_note", :default => "", :null => false
    t.timestamp "close_date",                   :null => false
    t.timestamp "created",                      :null => false
  end

  create_table "a_transaction_entry", :primary_key => "transaction_entry_id", :force => true do |t|
    t.integer   "transaction_id",                :null => false
    t.integer   "debit",                         :null => false
    t.integer   "account_id",                    :null => false
    t.integer   "note_id",        :default => 0, :null => false
    t.integer   "amt",                           :null => false
    t.timestamp "created",                       :null => false
  end

  create_table "a_ucat_rel", :primary_key => "ucat_rel_id", :force => true do |t|
    t.integer   "user_id",     :default => 0, :null => false
    t.integer   "company_id",  :default => 0, :null => false
    t.timestamp "created",                    :null => false
    t.text      "summary",                    :null => false
    t.integer   "usertype_id"
  end

  create_table "a_user", :primary_key => "user_id", :force => true do |t|
    t.string    "firstname",             :default => "", :null => false
    t.string    "middlename",            :default => "", :null => false
    t.string    "lastname",              :default => "", :null => false
    t.string    "email",                 :default => "", :null => false
    t.string    "password",              :default => "", :null => false
    t.string    "image_url",             :default => "", :null => false
    t.string    "work_phone",            :default => "", :null => false
    t.string    "cell_phone",            :default => "", :null => false
    t.string    "home_phone",            :default => "", :null => false
    t.timestamp "created",                               :null => false
    t.timestamp "birthdate",                             :null => false
    t.integer   "demo",                  :default => 1,  :null => false
    t.integer   "active",                :default => 1,  :null => false
    t.integer   "default_company_id",    :default => -1, :null => false
    t.string    "default_investor_type", :default => "", :null => false
    t.integer   "default_usertype_id",                   :null => false
  end

  create_table "a_user_equity", :primary_key => "user_equity_id", :force => true do |t|
    t.integer   "user_id"
    t.integer   "company_id"
    t.string    "equity_type",         :default => "",  :null => false
    t.integer   "note_id"
    t.float     "price",               :default => 0.0, :null => false
    t.integer   "transaction_id"
    t.timestamp "created",                              :null => false
    t.timestamp "grant_date",                           :null => false
    t.string    "contribution",        :default => "",  :null => false
    t.text      "summary",                              :null => false
    t.integer   "qnt",                 :default => 0,   :null => false
    t.float     "fair_value_at_grant", :default => 0.0, :null => false
    t.integer   "vesting_period",      :default => 0,   :null => false
    t.integer   "vest_per_year",       :default => 0,   :null => false
    t.integer   "exchange_type",       :default => 0,   :null => false
  end

  create_table "a_users_shares", :primary_key => "user_shares_id", :force => true do |t|
    t.integer "company_id"
    t.integer "user_id"
    t.integer "transaction_id"
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

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "password"
    t.string   "password_confirmation"
  end

end
