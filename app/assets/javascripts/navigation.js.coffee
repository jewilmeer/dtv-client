$ ->
  $.getJSON '/series.json', (data) -> 
    $('.navbar .search-query').typeahead
      source: data
      