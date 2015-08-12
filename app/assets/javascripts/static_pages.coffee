moveTank = (path_to_ico, path_to_ico_reverse, point_right, point_left, tank_width, spend) ->
  $('#redsquare').attr 'src', path_to_ico
  $('#redsquare').animate { left: point_right }, spend
  $('#redsquare').animate { left: point_right+60, 'width': tank_width * 0.05 }, 'slow', ->
    $('#redsquare').attr 'class', 'reverse'
    $('#redsquare').attr 'src', path_to_ico_reverse
#     версия из PHP:
#     $('#redsquare').attr 'src', reverseName(path_to_ico)
    return
  $('#redsquare').animate { left: '-=60', 'width': tank_width }, 'slow'
  $('#redsquare').animate { left: point_left }, spend
  $('#redsquare').animate { left: '+=60', 'width': tank_width * 0.05 }, 'slow', ->
    $('#redsquare').attr 'src', path_to_ico
    $('#redsquare').attr 'class', 'normal'
    $('#redsquare').animate { left: '-=60', 'width': tank_width }, 'slow'
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
#  **************************  анимация танка   *********************************
#  ******************************************************************************

  $('#anima_div').css 'width', $(window).width() * 0.65
  tank_width = parseInt($('#redsquare').css('width'))
  wrap_width = parseInt($('#anima_div').css('width'))
  point_right = wrap_width - tank_width - 8
  point_left = 8
  spend = 6000
  img_tank = 'http://localhost:3000/assets/type59.png'
  img_reverse ='http://localhost:3000/assets/type59_reverse.png'
#   img_tank = 'http://localhost:3000/assets/type59-0be63a10d364ee52bd1eff8a88329c8193610f1bdb8d57c090f465cef1b62262.png'
#   img_reverse ='http://localhost:3000/assets/type59_reverse-ac590ff3f14f8debeead35e79f865c59d7769990b528d01c911a0c5ae89e3c33.png'
#
  moveTank(img_tank, img_reverse, point_right, point_left, tank_width, spend)
return


