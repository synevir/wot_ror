class StaticPagesController < ApplicationController

	::COUNTRIES    = ['CCCP', 'Германия', 'Франция', 'Китай', 'Япония', 'all']
	::LEVELS       = (1..10).to_a.push('all')
	::PANZER_TYPES = ['lt', 'st', 'tt', 'pt', 'sau', 'all']
	::SORT_ORDER   = ['Asc', 'Desc']
	::ROWS_LIMIT   = [10, 20, 40]
 	::CBOX_IN_CEIL = 5
	::COLUMNS      = ['name1', 'country', 'price', 'processed_fights',
                'hit_shot_effective_persent', 'level']


	def home

	end

  def help
  end
end


