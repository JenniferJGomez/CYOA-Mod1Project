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

ActiveRecord::Schema.define(version: 2019_12_30_193210) do

  create_table "options", force: :cascade do |t|
    t.string "selection"
  end

  create_table "scenes", force: :cascade do |t|
    t.integer "scene_id"
    t.string "base_scene"
    t.string "option_a"
    t.string "option_b"
  end

  create_table "stories", force: :cascade do |t|
    t.string "story_name"
    t.string "opening_scene"
  end

end
