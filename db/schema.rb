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

ActiveRecord::Schema.define(:version => 20130519040651) do

  create_table "exams", :force => true do |t|
    t.string   "question",   :null => false
    t.text     "answers"
    t.string   "type"
    t.integer  "trial_id",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patient_answers", :force => true do |t|
    t.string   "answer"
    t.string   "status"
    t.integer  "patient_id"
    t.integer  "exam_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "fname"
    t.string   "mname"
    t.string   "lname"
    t.string   "email"
    t.string   "father_name"
    t.date     "dob"
    t.string   "mobile"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "trials", :force => true do |t|
    t.string   "name",                        :null => false
    t.text     "description", :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "vacancies", :force => true do |t|
    t.integer  "trial_period"
    t.integer  "max_subject"
    t.date     "closing_date"
    t.integer  "trial_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
