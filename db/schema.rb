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

ActiveRecord::Schema.define(:version => 20130719074034) do

  create_table "categories", :force => true do |t|
    t.string   "path"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "forms", :force => true do |t|
    t.string   "type_of_legal_entity"
    t.string   "company"
    t.string   "creator_name"
    t.string   "registered_address"
    t.string   "actual_address"
    t.string   "address_on_english"
    t.decimal  "phone",                    :precision => 8, :scale => 0
    t.decimal  "fax",                      :precision => 8, :scale => 0
    t.string   "email"
    t.decimal  "inn",                      :precision => 8, :scale => 0
    t.decimal  "kpp",                      :precision => 8, :scale => 0
    t.decimal  "ogrn",                     :precision => 8, :scale => 0
    t.string   "bank_name"
    t.string   "current_account"
    t.string   "correspondent_account"
    t.decimal  "bik",                      :precision => 8, :scale => 0
    t.string   "bank_person"
    t.string   "type_of_certificate"
    t.string   "auditors_name"
    t.string   "categories_list_of_works"
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
  end

end
