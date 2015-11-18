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

ActiveRecord::Schema.define(version: 20151104000750) do

  create_table "cliente_vehiculos", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "vehiculo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cliente_vehiculos", ["cliente_id"], name: "index_cliente_vehiculos_on_cliente_id"
  add_index "cliente_vehiculos", ["vehiculo_id"], name: "index_cliente_vehiculos_on_vehiculo_id"

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "rut"
    t.string   "direccion"
    t.string   "fono"
    t.string   "correo"
    t.string   "giro"
    t.string   "formapago"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fichas", force: true do |t|
    t.string   "numeroficha"
    t.string   "falla"
    t.string   "diagnostico"
    t.string   "total"
    t.integer  "vehiculo_id"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fichas", ["cliente_id"], name: "index_fichas_on_cliente_id"
  add_index "fichas", ["vehiculo_id"], name: "index_fichas_on_vehiculo_id"

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "vehiculos", force: true do |t|
    t.string   "patente"
    t.string   "modelo"
    t.string   "fabrica"
    t.string   "color"
    t.string   "cinlidrada"
    t.string   "caja"
    t.integer  "cliente_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vehiculos", ["cliente_id"], name: "index_vehiculos_on_cliente_id"

end
