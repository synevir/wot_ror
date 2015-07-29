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

ActiveRecord::Schema.define(version: 20150728212358) do

  create_table "panzers", force: :cascade do |t|
    t.string   "name",                       limit: 13
    t.datetime "created_at",                                                                    null: false
    t.datetime "updated_at",                                                                    null: false
    t.string   "country",                    limit: 20
    t.string   "country2",                   limit: 20
    t.string   "type_",                      limit: 4
    t.integer  "level",                      limit: 4
    t.string   "name2",                      limit: 60
    t.string   "to_top",                     limit: 60
    t.integer  "xp",                         limit: 4
    t.decimal  "massa",                                 precision: 4, scale: 1
    t.integer  "zapas_mass",                 limit: 4
    t.boolean  "zver",                       limit: 1,                          default: false
    t.boolean  "ic",                         limit: 1,                          default: false
    t.boolean  "patton",                     limit: 1,                          default: false
    t.boolean  "lend_liz",                   limit: 1,                          default: false
    t.boolean  "not_for_sale",               limit: 1,                          default: false
    t.boolean  "premium",                    limit: 1
    t.integer  "skill_research",             limit: 4
    t.integer  "price",                      limit: 4
    t.integer  "price_repair",               limit: 4
    t.integer  "price_valuta",               limit: 4
    t.integer  "processed_fights",           limit: 4
    t.string   "wins_persent",               limit: 5
    t.string   "survived_persent",           limit: 5
    t.time     "time_in_fight"
    t.integer  "mileage",                    limit: 4
    t.integer  "skill_battle",               limit: 4
    t.integer  "kredits",                    limit: 4
    t.integer  "shots",                      limit: 4
    t.integer  "hit_shot",                   limit: 4
    t.decimal  "hit_shot_persent",                      precision: 5, scale: 2
    t.integer  "damage_shrapnel",            limit: 4
    t.integer  "hit_shot_effective",         limit: 4
    t.decimal  "hit_shot_effective_persent",            precision: 5, scale: 2
    t.integer  "score_for_wipped_tracs",     limit: 4
    t.integer  "score_total_help_ally",      limit: 4
    t.integer  "score_for_damage",           limit: 4
    t.integer  "score_for_detect_enemy",     limit: 4
    t.integer  "damage_received",            limit: 4
    t.decimal  "detect_enemy_average",                  precision: 4, scale: 2
    t.integer  "destroy_enemy_average",      limit: 4
    t.decimal  "score_for_capture_average",             precision: 6, scale: 4
    t.decimal  "score_for_protected",                   precision: 6, scale: 4
    t.integer  "cost_recovery",              limit: 4
    t.integer  "profit_battle",              limit: 4
    t.integer  "profit_battle_premium",      limit: 4
  end

end
