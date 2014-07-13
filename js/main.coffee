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
    newTab = '#' + e.target.id.replace('-link', '')
    for otherTabs in ['#biography', '#skillset', '#portfolio', '#contact']
      $(otherTabs).hide()
    $(newTab).show()
