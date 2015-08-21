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

  
  def renderPanzerData(panzer_data)
	if (panzer_data == false || panzer_data == true )
	  return convertFalseTrue(panzer_data)
	else
	  return panzer_data
	end
  end

  def createClass(col, order_by)
	if col == order_by
	  return (col + '_data selected' )
	else
	  return (col +'_data')
	end
  end



end
