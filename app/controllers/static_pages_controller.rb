class StaticPagesController < ApplicationController

  ::COUNTRIES     = ['all', 'Британия', 'Германия', 'Китай', 'СССР','США', 'Франция', 'Япония']
  ::LEVELS        = ['all', 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  ::PANZER_TYPES  = ['all', 'lt', 'st', 'tt', 'pt', 'sau']
  ::SORT_ORDER    = ['ASC', 'DESC']
  ::SORT          = ['по возрастанию', 'по убыванию']
  ::ROWS_LIMIT    = [10, 20, 40]
  ::CBOX_IN_CEIL  = 7
  ::IGNORE_RENDER = ['id', 'created_at', 'updated_at', 'name2','zver','zapas_mass','to_top',
                     'country2', 'time_in_fight']
  ::IGNORE_ORDER  = ['country', 'type_']

	def home
	  @columns_available_to_render = Panzer.last.attributes.each_key.to_a - IGNORE_RENDER
	  @columns_default = ['name', 'country', 'level', 'xp', 'processed_fights',
                          'skill_battle', 'profit_battle', 'profit_battle_premium']
# фильтры:
	  @limit        = params[:limit_filter]
	  @sort         = params[:sort_filter]
      @panzers_type = params[:type_filter]
	  @level        = params[:level_filter]
	  @country      = params[:country_filter]
	  @order_by     = params[:order_by_filter]
	  @fields       = @columns_available_to_render - IGNORE_ORDER

	  @c_tr = Array.new
      @columns_available_to_render.each do |cbox|
		@c_tr.push(cbox) if params[cbox]
	  end

    end

  def help
  end
end


