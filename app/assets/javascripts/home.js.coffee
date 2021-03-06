$(document).ready ->

  # To collapse the speakers area (mobile version)
  $('.accordion-heading').click ->
    section = $(this).parent()
    nothing_show = () ->
      section.find('.accordion-body').slideToggle()
      section.find('.accordion-heading').toggleClass('collapsed')

    show_one_speaker = () ->
      $('.accordion-body:visible').slideToggle()
      $('.accordion-heading').removeClass('collapsed')
      nothing_show()

    show_speaker_click_again = () ->
      section.find('.accordion-body').slideToggle()
      section.find('.accordion-heading').toggleClass('collapsed')

    if section.find('.accordion-heading').hasClass('collapsed')
      show_speaker_click_again()
    else if $('.accordion-body:visible').siblings('.accordion-heading').hasClass('collapsed')
      show_one_speaker()
    else
      nothing_show()

  # Hide the menu when click an option
  $('.columns ul li a').click ->
    $('.top-bar').removeClass('expanded')

  # Change the height necesary to each line
  $('.row-schedule:contains("Gregg Pollack")').css("height", "80px")
  $('.row-schedule:contains("Santiago Pastorino")').css("height", "80px")
  $('.row-schedule:contains("Bryan Liles")').css("height", "80px")
  $('.row-schedule:contains("break")').css("height", "40px")
  $('.row-schedule:contains("announcements")').css("height", "40px")
  $('.row-schedule:contains("lunch")').css("height", "40px")
  $('.row-schedule:contains("Norberto Hernández")').css("height", "115px")
  $('.row-schedule:contains("Herman Moreno")').css("height", "115px")
  $('.row-schedule:contains("Konstantin Gredeskoul")').css("height", "115px")
  $('.row-schedule:contains("lightning talks")').css("height", "40px")
  $('.row-schedule:contains("last words of the day")').css("height", "55px")
  $('.row-schedule:contains("goodbyes!")').css("height", "55px")
  
  # Make height size to 100% (mobile verion - Portrait)
  setMenuHeight()
  put_img()
  window.addEventListener "orientationchange", (->    
    setMenuHeight() && put_img()
  ), false

setMenuHeight = ->
  if $(window).height() > $(window).width() && $(window).width() < 500
    $('.contain-to-grid .row').height(800)
  else
    $('.contain-to-grid .row').height('10px')

put_img = ->
  if $(window).height() > $(window).width() && $(window).width() < 500 && $('.center.columns ul li').size() == 4
    $('.center.columns ul:first-child').prepend('<li class="img_mobile"><img src="assets/mobile/mobile-menu-image.svg" /></li>')