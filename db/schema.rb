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

ActiveRecord::Schema.define(version: 20140525182514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "archivo_hitos", force: true do |t|
    t.integer  "archivo_id"
    t.integer  "hito_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "archivo_listtareas", force: true do |t|
    t.integer  "archivo_id"
    t.integer  "listtarea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "archivo_proyectos", force: true do |t|
    t.integer  "archivo_id"
    t.integer  "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "archivo_tareas", force: true do |t|
    t.integer  "archivo_id"
    t.integer  "tarea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "archivos", force: true do |t|
    t.string   "nombre"
    t.datetime "falta"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empresas", force: true do |t|
    t.string   "nombre"
    t.string   "direccion1"
    t.string   "direccion2"
    t.string   "provincia"
    t.string   "pais"
    t.string   "zipcode"
    t.string   "telefono"
    t.string   "email"
    t.string   "website"
    t.string   "logofile"
    t.integer  "lider_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hitos", force: true do |t|
    t.integer  "proyecto_id"
    t.string   "nombre"
    t.text     "description"
    t.datetime "ffin"
    t.integer  "responsable_id"
    t.integer  "thito"
    t.integer  "ehito"
    t.integer  "privada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "listtareas", force: true do |t|
    t.integer  "proyecto_id"
    t.string   "lista"
    t.text     "descripcion"
    t.string   "elista"
    t.integer  "lider_id"
    t.datetime "falta"
    t.datetime "fvcto"
    t.datetime "fuce"
    t.datetime "fcierre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos", force: true do |t|
    t.integer  "empresa_id"
    t.string   "nombre"
    t.text     "description"
    t.string   "comitente"
    t.string   "lider"
    t.datetime "fcierre"
    t.string   "logofile"
    t.string   "eproyecto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tareas", force: true do |t|
    t.integer  "listtarea_id"
    t.string   "nombre"
    t.text     "description"
    t.datetime "fplanvcto"
    t.datetime "ffin"
    t.integer  "responsable"
    t.float    "avance"
    t.integer  "ttarea"
    t.integer  "etarea"
    t.integer  "privada"
    t.integer  "trepeticion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_hitos", force: true do |t|
    t.integer  "user_id"
    t.integer  "hito_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_listtareas", force: true do |t|
    t.integer  "user_id"
    t.integer  "listtarea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_proyectos", force: true do |t|
    t.integer  "user_id"
    t.integer  "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_tareas", force: true do |t|
    t.integer  "user_id"
    t.integer  "tarea_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "fvctopass"
    t.string   "role"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "celphone"
    t.integer  "timezone"
    t.string   "photofile"
    t.integer  "empresa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
