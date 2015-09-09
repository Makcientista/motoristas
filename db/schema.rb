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

ActiveRecord::Schema.define(version: 20150909132521) do

  create_table "atestados", force: :cascade do |t|
    t.integer  "motorista_id"
    t.string   "picture"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "user"
  end

  add_index "atestados", ["motorista_id"], name: "index_atestados_on_motorista_id"

  create_table "motoristas", force: :cascade do |t|
    t.string   "nome"
    t.string   "rf"
    t.string   "cargo"
    t.string   "secao_original"
    t.string   "secao_atual"
    t.string   "pontuacao"
    t.string   "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "local"
    t.date     "data_de_nasc"
    t.date     "data_posse"
  end

  create_table "multas", force: :cascade do |t|
    t.integer  "motorista_id"
    t.string   "picture"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "user"
  end

  add_index "multas", ["motorista_id"], name: "index_multas_on_motorista_id"

  create_table "registros", force: :cascade do |t|
    t.string   "nome"
    t.string   "rf"
    t.string   "cargo"
    t.string   "secao_original"
    t.string   "secao_atual"
    t.string   "pontuacao"
    t.string   "status"
    t.string   "local"
    t.string   "data_de_nasc"
    t.string   "data_posse"
    t.string   "momento"
    t.string   "user"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "rf"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "nome"
    t.string   "tipo"
  end

end
