class StaticPagesController < ApplicationController

  ::COUNTRIES     = ['CCCP', 'Германия', 'Британия', 'Франция', 'Китай', 'Япония', 'all']
  ::LEVELS        = (1..10).to_a.push('all')
  ::PANZER_TYPES  = ['lt', 'st', 'tt', 'pt', 'sau', 'all']
  ::SORT_ORDER    = ['Asc', 'Desc']
  ::SORT          = ['по возрастанию', 'по убыванию']
  ::ROWS_LIMIT    = [10, 20, 40]
  ::CBOX_IN_CEIL  = 5
#   ::COLUMNS       = ['name', 'country', 'price', 'processed_fights',
#                      'hit_shot_effective_persent', 'level', 'premium']
  ::IGNORE_FIELDS = ['id', 'created_at', 'updated_at', 'name2','zver','zapas_mass','to_top','country2']

	def home
		@panzers = Panzer.all
		@fields  = @panzers[0].attributes.each_key.to_a - IGNORE_FIELDS
		@columns_to_render = @panzers[0].attributes.each_key.to_a - IGNORE_FIELDS
	end

  def help
  end
end


