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
                          'wins_persent', 'skill_battle', 'profit_battle',
                          'profit_battle_premium']
# фильтры:
    @limit        = params[:limit_filter]
    @sort         = params[:sort_filter]
    @panzers_type = params[:type_filter]
    @level        = params[:level_filter]
    @country      = params[:country_filter]
    @order_by     = params[:order_by_filter]
    @fields_for_order = @columns_available_to_render - IGNORE_ORDER

# колонки для отображения в результирующей таблице
# названия колонок в первой строке таблицы
    @c_tr       = Array.new
    @caption_tr = Array.new

# базовый вариант массива колонок для вывода в главной таблице
#	  @columns_available_to_render.each do |cbox|
#  		@c_tr.push(cbox) if params[cbox]
# 	  end

# массив меток для чекбоксов определяется только при первой загрузке
    unless @checkboxs_caption
      @checkboxs_caption = Array.new
      @columns_available_to_render.each do |col|
        temp_caption = ColumnHeader.find_by(name: col)
        temp_caption ? @checkboxs_caption.push(temp_caption.caption) : @checkboxs_caption.push(col)
      end
    else
      @debug_alert=' массив лабелов =' + @checkboxs_caption.size.to_s
    end

# заполнение масива колонок для отображения в главной таблице
# и массива названий колонок
    if params.size > 2
      @columns_available_to_render.each do |cbox|
        if params[cbox]
          @c_tr.push(cbox)
          column_header = ColumnHeader.find_by(name: cbox)
          column_header ? @caption_tr.push(column_header.caption) : @caption_tr.push(cbox)
        end
      end
    else      # если страница загружается в первый раз
      @c_tr = @columns_default if @c_tr.size == 0
      @c_tr.each do |col|
        column_header = ColumnHeader.find_by(name: col)
        column_header ? @caption_tr.push(column_header.caption) : @caption_tr.push(col)
      end
    end

  end    # end of `def home`

  def help
  end
end
