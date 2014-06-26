$ ->
  setActive = (lnk) ->
    lnk = $(lnk)
    $('#header-navlinks').children().removeClass('active')
    lnk.parent().addClass('active')

  biographyTemplate = Handlebars.compile $("#biography-template").html()
  portfolioTemplate = Handlebars.compile $("#portfolio-template").html()
  contactTemplate = Handlebars.compile $("#contact-template").html()
  
  main = $('#main')
  main.html biographyTemplate

  $('#header-navlinks').on 'click', '#biography-link', (e) ->
    e.preventDefault()
    console.log 'hi bio'
    main.html biographyTemplate()
    setActive('#biography-link')

  $('#header-navlinks').on 'click', '#portfolio-link', (e) ->
    e.preventDefault()
    console.log 'hi port'
    main.html portfolioTemplate()
    setActive('#portfolio-link')

  $('#header-navlinks').on 'click', '#contact-link', (e) ->
    e.preventDefault()
    console.log 'hi cont'
    main.html contactTemplate()
    setActive('#contact-link')
