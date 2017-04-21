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

ActiveRecord::Schema.define(version: 20170208005527) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autors", force: :cascade do |t|
    t.text     "a_id"
    t.text     "first_name",    null: false
    t.text     "second_name",   null: false
    t.text     "last_name"
    t.text     "spin"
    t.boolean  "science_index"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "statistic_id"
    t.index ["a_id"], name: "index_autors_on_a_id", unique: true, using: :btree
    t.index ["last_name", "first_name", "second_name"], name: "index_autors_on_last_name_and_first_name_and_second_name", using: :btree
    t.index ["statistic_id"], name: "index_autors_on_statistic_id", using: :btree
  end

  create_table "autors_publications", force: :cascade do |t|
    t.integer  "autor_id"
    t.integer  "publication_id"
    t.text     "publ_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "citations", force: :cascade do |t|
    t.text     "cit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "citations_publications", force: :cascade do |t|
    t.integer  "citation_id"
    t.integer  "publication_id"
    t.text     "publ_id"
    t.text     "cit_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "journals", force: :cascade do |t|
    t.text     "name",             null: false
    t.text     "jour_id"
    t.text     "publishing_house"
    t.text     "city",             null: false
    t.integer  "SI_place"
    t.integer  "SI_value"
    t.integer  "impact_factor2"
    t.integer  "impact_factor5"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["name", "publishing_house"], name: "index_journals_on_name_and_publishing_house", using: :btree
  end

  create_table "publications", force: :cascade do |t|
    t.text     "publ_id",      null: false
    t.text     "name",         null: false
    t.text     "organisation"
    t.text     "ptype"
    t.integer  "journal_id"
    t.integer  "year"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["journal_id"], name: "index_publications_on_journal_id", using: :btree
    t.index ["publ_id"], name: "index_publications_on_publ_id", unique: true, using: :btree
  end

  create_table "statistics", force: :cascade do |t|
    t.integer  "value0"
    t.integer  "value1"
    t.integer  "value2"
    t.integer  "value3"
    t.integer  "value4"
    t.integer  "value5"
    t.float    "value6"
    t.integer  "value7"
    t.integer  "value8"
    t.integer  "value9"
    t.integer  "value10"
    t.integer  "value11"
    t.integer  "value12"
    t.integer  "value13"
    t.integer  "value14"
    t.integer  "value15"
    t.integer  "value16"
    t.integer  "value17"
    t.integer  "value18"
    t.integer  "value19"
    t.integer  "value20"
    t.integer  "value21"
    t.integer  "value22"
    t.integer  "value23"
    t.integer  "value24"
    t.integer  "value25"
    t.integer  "value26"
    t.integer  "value27"
    t.float    "value28"
    t.float    "value29"
    t.integer  "value30"
    t.integer  "value31"
    t.integer  "value32"
    t.integer  "stat5"
    t.integer  "stat7"
    t.integer  "stat15"
    t.integer  "stat16"
    t.integer  "stat18"
    t.integer  "stat19"
    t.integer  "stat20"
    t.integer  "stat21"
    t.integer  "stat22"
    t.integer  "stat23"
    t.integer  "stat24"
    t.integer  "stat25"
    t.integer  "stat26"
    t.integer  "stat27"
    t.integer  "stat30"
    t.integer  "stat31"
    t.integer  "stat32"
    t.integer  "autor_id"
    t.text     "a_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_statistics_on_autor_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "activation_state"
    t.string   "activation_token"
    t.datetime "activation_token_expires_at"
    t.index ["activation_token"], name: "index_users_on_activation_token", using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree
  end

  add_foreign_key "autors", "statistics"
  add_foreign_key "publications", "journals"
  add_foreign_key "statistics", "autors"
end
