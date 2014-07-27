$ ->
  unsetActive = () ->
    $('#header-navlinks').children().removeClass('active')

  setActive = (lnk) ->
    lnk = $(lnk)
    unsetActive()
    lnk.addClass('active')

  $('#header-navlinks li').on 'click', (e) ->
    e.preventDefault()
    setActive(@)
    for otherTab in ['#biography', '#skillset', '#portfolio', '#contact']
      $(otherTab).hide()
    newTab = '#' + e.target.id.replace('-link', '')
    $(newTab).show()
