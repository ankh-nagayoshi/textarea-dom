$ ->
  $('#submit-button').on 'click', ->
    textarea = $($('textarea').val())
    result = $('#result')
    
    wrap = $('<div></div>', {
      'class': 'wrap'
    }).append textarea
    
    images = wrap.find('img')
    if images.length > 0
      result.html $(images[0]).attr('src')
    else
      result.html 'no image'
