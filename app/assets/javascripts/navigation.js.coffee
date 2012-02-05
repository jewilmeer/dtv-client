$ ->
  $.getJSON '/programs.json', (data) -> 
    $('.navbar .search-query').typeahead
      source: data
      