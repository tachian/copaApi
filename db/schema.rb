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

ActiveRecord::Schema.define(version: 20140728175219) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "companies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "group_question_alternatives", force: true do |t|
    t.string   "name"
    t.boolean  "correct"
    t.integer  "group_question_statement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_question_alternatives", ["group_question_statement_id"], name: "index_group_question_alternatives_on_group_question_statement_id", using: :btree

  create_table "group_question_statements", force: true do |t|
    t.string   "name"
    t.integer  "group_question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_question_statements", ["group_question_id"], name: "index_group_question_statements_on_group_question_id", using: :btree

  create_table "group_questions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.integer  "team_id",    null: false
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["team_id"], name: "index_members_on_team_id", using: :btree

  create_table "questions", force: true do |t|
    t.text     "name"
    t.string   "media"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "simple_question_alternatives", force: true do |t|
    t.text     "name"
    t.string   "media"
    t.boolean  "correct"
    t.integer  "simple_question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "simple_question_alternatives", ["simple_question_id"], name: "index_simple_question_alternatives_on_simple_question_id", using: :btree

  create_table "simple_questions", force: true do |t|
    t.text     "name"
    t.string   "media"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_guide_analyses", force: true do |t|
    t.integer  "test_id"
    t.string   "name"
    t.string   "media"
    t.text     "statement"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_guide_analyses", ["test_id"], name: "index_test_guide_analyses_on_test_id", using: :btree

  create_table "test_guide_basics", force: true do |t|
    t.integer  "test_id"
    t.integer  "test_type_id"
    t.integer  "order"
    t.string   "name"
    t.text     "message"
    t.integer  "simple_question_id"
    t.integer  "group_question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_guide_basics", ["group_question_id"], name: "index_test_guide_basics_on_group_question_id", using: :btree
  add_index "test_guide_basics", ["simple_question_id"], name: "index_test_guide_basics_on_simple_question_id", using: :btree
  add_index "test_guide_basics", ["test_id"], name: "index_test_guide_basics_on_test_id", using: :btree
  add_index "test_guide_basics", ["test_type_id"], name: "index_test_guide_basics_on_test_type_id", using: :btree

  create_table "test_guide_scenario_aps", force: true do |t|
    t.integer  "test_guide_scenario_id"
    t.text     "statement"
    t.integer  "simple_question_id"
    t.integer  "group_question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_guide_scenario_aps", ["group_question_id"], name: "index_test_guide_scenario_aps_on_group_question_id", using: :btree
  add_index "test_guide_scenario_aps", ["simple_question_id"], name: "index_test_guide_scenario_aps_on_simple_question_id", using: :btree
  add_index "test_guide_scenario_aps", ["test_guide_scenario_id"], name: "index_test_guide_scenario_aps_on_test_guide_scenario_id", using: :btree

  create_table "test_guide_scenario_sas", force: true do |t|
    t.integer  "test_guide_scenario_id"
    t.text     "statement"
    t.integer  "simple_question_id"
    t.integer  "group_question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "test_guide_scenario_sas", ["group_question_id"], name: "index_test_guide_scenario_sas_on_group_question_id", using: :btree
  add_index "test_guide_scenario_sas", ["simple_question_id"], name: "index_test_guide_scenario_sas_on_simple_question_id", using: :btree
  add_index "test_guide_scenario_sas", ["test_guide_scenario_id"], name: "index_test_guide_scenario_sas_on_test_guide_scenario_id", using: :btree

  create_table "test_guide_scenarios", force: true do |t|
    t.integer  "test_guide_analysis_id"
    t.string   "name"
    t.string   "media"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order"
  end

  add_index "test_guide_scenarios", ["test_guide_analysis_id"], name: "index_test_guide_scenarios_on_test_guide_analysis_id", using: :btree

  create_table "test_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tests", force: true do |t|
    t.string   "name"
    t.integer  "company_id"
    t.integer  "duration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tests", ["company_id"], name: "index_tests_on_company_id", using: :btree

end
