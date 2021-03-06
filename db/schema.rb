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

ActiveRecord::Schema.define(version: 20141114192157) do

  create_table "comments", force: true do |t|
    t.string   "commenter"
    t.text     "body"
    t.integer  "produit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "website"
  end

  add_index "comments", ["produit_id"], name: "index_comments_on_produit_id"

  create_table "details", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headers", force: true do |t|
    t.string   "heading"
    t.string   "imgurl"
    t.boolean  "status"
    t.string   "detailurl"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "homes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "imagename"
    t.string   "url"
    t.decimal  "prixvente"
    t.decimal  "prixnet"
    t.decimal  "commission"
    t.integer  "stock"
    t.integer  "likes"
    t.integer  "downloads"
    t.text     "tags"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "produits", force: true do |t|
    t.string   "name"
    t.string   "imagename"
    t.string   "url"
    t.decimal  "prixvente"
    t.decimal  "prixnet"
    t.string   "devise"
    t.decimal  "commission"
    t.integer  "stock"
    t.integer  "likes"
    t.integer  "downloads"
    t.text     "tags"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "vues"
    t.string   "admin_ip"
    t.text     "product_desc"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "token"
    t.boolean  "status"
    t.string   "ipaddress"
    t.string   "siteid"
    t.text     "address1"
    t.text     "address2"
    t.text     "address3"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "zipcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "telephone_1"
    t.string   "telephone_2"
  end

end
