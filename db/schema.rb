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

ActiveRecord::Schema.define(version: 20140131062611) do

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.boolean  "lactose"
    t.boolean  "nut"
    t.boolean  "shellfish"
    t.boolean  "wheat"
    t.boolean  "vegetarian"
    t.boolean  "vegan"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "measurements", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "ingredient_id"
    t.integer  "recipe_servings"
    t.float    "ingredient_size"
    t.string   "ingredient_unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes", force: true do |t|
    t.string   "name"
    t.string   "type"
    t.float    "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
