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

ActiveRecord::Schema.define(:version => 20131006012540) do

  create_table "events", :force => true do |t|
    t.string   "name"
    t.integer  "venue_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "creator_id"
  end

  add_index "events", ["creator_id"], :name => "index_events_on_creator_id"
  add_index "events", ["venue_id"], :name => "index_events_on_venue_id"

  create_table "locations", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "user_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.float    "distance_from_last"
    t.float    "time_since_last"
    t.float    "velocity_since_last"
  end

  add_index "locations", ["user_id"], :name => "index_locations_on_user_id"

  create_table "memberships", :force => true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "memberships", ["event_id"], :name => "index_memberships_on_event_id"
  add_index "memberships", ["user_id"], :name => "index_memberships_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
