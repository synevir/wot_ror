class AddColumnType < ActiveRecord::Migration
  def change
    add_column :panzers, :type,				:string, 	limit:4,	null:true
    add_column :panzers, :level,			:integer, 	null:true
    add_column :panzers, :name2,			:string, 	limit:60,	null:true
    add_column :panzers, :to_top,			:string, 	limit:60,	null:true
    add_column :panzers, :xp,				:integer, 	null:true
    add_column :panzers, :massa,			:decimal,	precision:4, scale:1, null:true
    add_column :panzers, :zapas_mass, 		:integer, 	null:true
    add_column :panzers, :zver,   			:boolean, 	default:0
    add_column :panzers, :ic,	  			:boolean, 	default:0
    add_column :panzers, :patton, 			:boolean, 	default:0
    add_column :panzers, :lend_liz,			:boolean, 	default:0
    add_column :panzers, :not_for_sale, 	:boolean, 	default:0
    add_column :panzers, :premium,  		:boolean, 	null:true
    add_column :panzers, :skill_research,	:integer,	null:true
    add_column :panzers, :price,			:integer, 	null:true
    add_column :panzers, :price_repair,		:integer, 	null:true
    add_column :panzers, :price_valuta,		:integer, 	null:true
    add_column :panzers, :processed_fights,	:integer,	null:true
    add_column :panzers, :wins_persent,		:string, 	limit:5,	null:true
    add_column :panzers, :survived_persent,	:string,	limit:5,	null:true
    add_column :panzers, :time_in_fight,	:time, 		null:true
    add_column :panzers, :mileage,			:integer, 	null:true
    add_column :panzers, :skill_battle,		:integer, 	null:true
    add_column :panzers, :kredits,			:integer, 	null:true
    add_column :panzers, :shots,			:integer, 	null:true
    add_column :panzers, :hit_shot,			:integer, 	null:true
    add_column :panzers, :hit_shot_persent,	:decimal,	precision:5, scale:2, null:true
    add_column :panzers, :damage_shrapnel,	:integer,	null:true
    add_column :panzers, :hit_shot_effective,		:integer,	null:true
    add_column :panzers, :hit_shot_effective_persent, :decimal, precision:5, scale:2, null:true
    add_column :panzers, :score_for_wipped_tracs,	:integer, 	null:true
    add_column :panzers, :score_total_help_ally,	:integer, 	null:true
    add_column :panzers, :score_for_damage,			:integer, 	null:true
    add_column :panzers, :score_for_detect_enemy,	:integer, 	null:true
    add_column :panzers, :damage_received,			:integer, 	null:true
    add_column :panzers, :detect_enemy_average,		:decimal,	precision:4, scale:2, null:true
    add_column :panzers, :destroy_enemy_average,	:integer, 	null:true
    add_column :panzers, :score_for_capture_average,:decimal,	precision:6, scale:4, null:true
    add_column :panzers, :score_for_protected,		:decimal,	precision:6, scale:4, null:true
    add_column :panzers, :cost_recovery,			:integer, 	null:true
    add_column :panzers, :profit_battle,			:integer, 	null:true
    add_column :panzers, :profit_battle_premium,	:integer, 	null:true
  end
end
