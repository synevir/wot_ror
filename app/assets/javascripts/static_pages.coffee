moveTanks = (point_right, point_left, tank_width, spend) ->
  $('#redsquare').animate { left: point_right }, spend
    # --- turn tank in right point ---
  $('#redsquare').animate { left: point_right+60, 'width': tank_width * 0.05 }, 'slow', ->
    $('#redsquare_reverse').css('left', point_right+60)
    $('#redsquare').css('visibility','hidden')
    $('#redsquare_reverse').css('visibility','visible')
    $('#redsquare_reverse').css('width', tank_width * 0.05)

      # --- turn tank_revers in right point ---
    $('#redsquare_reverse').animate { left: '-=60', 'width': tank_width }, 'slow'
    $('#redsquare_reverse').animate { left: point_left }, spend
      # --- turn tank_revers in left point ---
    $('#redsquare_reverse').animate { left: '+=60', 'width': tank_width * 0.05 }, 'slow', ->
      $('#redsquare').css('left', point_left + 60)
      $('#redsquare_reverse').css('visibility','hidden')
      $('#redsquare').css('visibility','visible')
        # --- turn tank in right point ---
      $('#redsquare').animate { left: '-=60', 'width': tank_width }, 'slow'
      return

    return
  return




$(document).on "page:change", ->
  flag = true

  $('#btn_spoiler').click ->
    if flag
      @value = 'Скрыть ↑↑↑↑↑↑↑↑'
      flag = false
    else
      @value = 'Показать ↓↓↓↓↓↓'
      flag = true
# animate hide&unhide check_boxs table in element "#div_spoiler"
    if (@tog = !@tog) then $('#div_spoiler').slideDown(500)
    else $('#div_spoiler').slideUp(500)




#  ******************************************************************************
#  *********                   анимация танка                        ************
#  ******************************************************************************
  $('#anima_div').css 'width', $(window).width() * 0.65
  $('#redsquare_reverse').css 'visibility','hidden'
  tank_width = parseInt($('#redsquare').css('width'))
  wrap_width = parseInt($('#anima_div').css('width'))
  point_right = wrap_width - tank_width - 8
  point_left = 8
  spend = 6000

  moveTanks(point_right, point_left, tank_width, spend)
#  ******************************************************************************



# Определение элемента, по которому кликнули
  document.onclick = (event) ->
    event = event or window.event
    if !event.target
      event.target = event.srcElement
    clicked_column = event.target.id.substring(10)

#     alert $('#order_by_filter').html()

    return


return
