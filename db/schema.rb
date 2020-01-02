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

ActiveRecord::Schema.define(version: 2020_01_02_174342) do

  create_table "choices", force: :cascade do |t|
    t.string "name"
    t.text "scene"
    t.text "option"
  end

  create_table "options", force: :cascade do |t|
    t.integer "base_scene_id"
    t.integer "next_scene_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.string "lose"
    t.text "title_text"
    t.text "scene_text"
  end

  create_table "stories", force: :cascade do |t|
    t.string "story_name"
  end

end
