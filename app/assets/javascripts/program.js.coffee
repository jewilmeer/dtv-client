$ ->
  $('.carousel').carousel
    interval: 30000
  $('[name=tag]').typeahead
    source: ['Snack', 'Download', 'Chick Flick', 'SciFi', 'Comedy', 'Medical', 'Detective', 'To be sorted']
