module StaticPagesHelper

  def cbName(name)
    return 'cb_' + name.to_s
  end

  def createWhere(params)
	return('function `create_where` error') unless params.class == Hash
	return('') if (params.size == 0)

	str = 'WHERE '
	params.each do |key, value|
      str += key.to_s + '=\'' + value + '\' AND '
	end

    str = str[0..str.length-6]
	return(str)
  end


  def renderCheckBox(cb_name, checked=false)
	unless checked
      return( 'check_box_tag(' + cbName(cb_name) +', 1, false)')
	else
	  return( 'check_box_tag(' + cbName(cb_name) +', 1, true)' )
	end
  end


  def convertFalseTrue(value)
	if value; return '+'
	else; return '-'
	end
  end

# отображение "+" "-" в булевских ячейках вместо "true" "false"
  def renderPanzerData(panzer_data)
	if (panzer_data == false || panzer_data == true )
	  return convertFalseTrue(panzer_data)
	else
	  return panzer_data
	end
  end


# задание классов стилей для колонок главной таблицы
  def createClass(col, order_by, value)
	result = col
	(col == order_by)? result += '_data selected' : result+='_data'
    if value.class == Fixnum
	  (value >= 0)? result += ' profit' : result += ' loss'
	end
	return(result)
  end

  def fillCaptions(columns_list)
	return columns_list if columns_list.empty?
	columns_list.each do |col|

	end
  end

 
end
