$ ->
  $.getJSON '/programs.json', (data) -> 
    console?.log $('.navbar .search-query')
    $('.navbar .search-query').typeahead
      source: data
      