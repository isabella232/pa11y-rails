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

ActiveRecord::Schema.define(version: 20160229191246) do

  create_table "issues", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.integer  "site_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "github_id"
  end

  add_index "issues", ["site_id"], name: "index_issues_on_site_id"

  create_table "pages", force: :cascade do |t|
    t.string   "url"
    t.string   "title"
    t.integer  "site_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "acc_warnings"
    t.integer  "acc_errors"
    t.integer  "acc_notices"
    t.text     "scan"
  end

  add_index "pages", ["site_id"], name: "index_pages_on_site_id"

  create_table "sites", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "scan"
    t.integer  "acc_warnings"
    t.integer  "acc_errors"
    t.integer  "acc_notices"
    t.string   "github_user"
    t.string   "github_repo"
  end

end