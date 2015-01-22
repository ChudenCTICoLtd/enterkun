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

ActiveRecord::Schema.define(version: 20141104054646) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chosains", force: true do |t|
    t.string   "namecode"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "kyoukaicode"
  end

  create_table "chosajisseki_codes", force: true do |t|
    t.string   "atai"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "kigou"
  end

  create_table "chosakekka_codes", force: true do |t|
    t.string   "atai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descriptions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eigyosyos", id: false, force: true do |t|
    t.string   "kyoukaicode", null: false
    t.string   "kyoukaimei"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "eigyosyos", ["kyoukaicode"], name: "index_eigyosyos_on_kyoukaicode", unique: true, using: :btree

  create_table "houmons", force: true do |t|
    t.datetime "houmon_ymd"
    t.string   "houmon_su"
    t.string   "tenki"
    t.string   "zaitaku_jotai"
    t.string   "kofu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "lat",           precision: 11, scale: 8
    t.decimal  "lng",           precision: 11, scale: 8
    t.string   "picture"
  end

  create_table "jyoutai_umufukanous", force: true do |t|
    t.string   "atai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jyoutai_umumijisshis", force: true do |t|
    t.string   "atai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jyoutai_umus", force: true do |t|
    t.string   "atai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keiyakus", force: true do |t|
    t.string   "okyaku_code"
    t.string   "chosa_kubn"
    t.string   "kanriku_code"
    t.string   "hashira_bango"
    t.string   "okyaku_name"
    t.string   "keiyakushubetsu_code"
    t.string   "torikigai_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "futaku_ym"
    t.string   "shugo_code"
    t.string   "kyoukaicode"
  end

  create_table "kofus", force: true do |t|
    t.string   "kofushubetsu_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "chosain_id"
    t.integer  "keiyaku_id"
    t.string   "chosasyurui_code"
    t.string   "shugo_code"
    t.string   "newest_chosajisseki_code"
    t.string   "chosa_ym"
  end

  create_table "monshins", force: true do |t|
    t.string   "mijisshi_riyu"
    t.string   "mononifurebiribiri_umumi"
    t.string   "zoukaichiku_umumi"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "jisshi_umu"
    t.integer  "tenkenkekka_id"
  end

  create_table "okugais", force: true do |t|
    t.string   "toritsukezetsuen_ryohifuno"
    t.string   "tabutsurikaku_ryohifuno"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tenkenkekka_id"
  end

  create_table "okunais", force: true do |t|
    t.string   "mijisshi_riyu"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "jisshi_umu"
    t.string   "bundenbanhason_umu"
    t.string   "juudenburosyutsu_umu"
    t.integer  "tenkenkekka_id"
  end

  create_table "riyu_monshins", force: true do |t|
    t.string   "atai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "riyu_okunais", force: true do |t|
    t.string   "atai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sokuteis", force: true do |t|
    t.integer  "kairo_su"
    t.float    "roueidenryu_ikkatsu"
    t.float    "zetsuenteikou_ikkatsu"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tenkenkekka_id"
  end

  create_table "tenkenkekkas", force: true do |t|
    t.string   "chosakekka_code"
    t.string   "chosajisseki_code"
    t.integer  "houmon_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenkis", force: true do |t|
    t.string   "atai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zaitakus", force: true do |t|
    t.string   "atai"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zetsufudaichos", force: true do |t|
    t.string   "keiyaku_id"
    t.string   "scsym"
    t.string   "sscsym"
    t.string   "sscsym2"
    t.string   "sscsym3"
    t.string   "sscsym4"
    t.integer  "haisen"
    t.string   "kiki"
    t.string   "kaishuym"
    t.string   "biko"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
