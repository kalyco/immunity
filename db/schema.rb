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

ActiveRecord::Schema.define(version: 20150422184701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cells", force: :cascade do |t|
    t.integer  "system_id"
    t.string   "status",     default: "antibody"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "volatility"
    t.boolean  "volatile"
    t.integer  "virus_id"
  end

  add_index "cells", ["virus_id"], name: "index_cells_on_virus_id", unique: true, using: :btree

  create_table "stages", force: :cascade do |t|
    t.integer  "system_id",                         null: false
    t.string   "name",           default: "innate"
    t.integer  "cytokines",      default: 0
    t.integer  "macromolecules", default: 0
    t.integer  "phagocytes",     default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stages", ["system_id"], name: "index_stages_on_system_id", unique: true, using: :btree

  create_table "systems", force: :cascade do |t|
    t.integer  "meta_points",     default: 30
    t.integer  "user_id",                                   null: false
    t.integer  "memory",          default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status",          default: "uncompromised"
    t.integer  "balance_points",  default: 0
    t.integer  "differentiation", default: 0
    t.integer  "apoptosis",       default: 1
    t.integer  "pyrogenation",    default: 1
    t.integer  "stage_order",     default: 0
  end

  add_index "systems", ["user_id"], name: "index_systems_on_user_id", unique: true, using: :btree

  create_table "turns", force: :cascade do |t|
    t.integer  "system_id",              null: false
    t.integer  "order",      default: 1
    t.string   "player"
    t.datetime "created_at"
    t.datetime "updated_at"
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "viri", force: :cascade do |t|
    t.integer  "system_id"
    t.string   "status",      default: "latent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stage_order", default: 0
    t.integer  "cell_id"
    t.string   "cycle"
  end

  add_index "viri", ["cell_id"], name: "index_viri_on_cell_id", unique: true, using: :btree

end
