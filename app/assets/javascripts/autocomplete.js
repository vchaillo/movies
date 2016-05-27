$(document).on('page:change', function() {
    
    var moviesSearchResults = [];
    $('.movie_datas').each(function( index ) {
      console.log($(this).text());
      moviesSearchResults.push($(this).text());
    });

    $("#api_search_movie").autocomplete({
      source: moviesSearchResults
    });

    var availableDirectors = [];
    $('.directors').each(function( index ) {
      console.log($(this).prop('name') + ": " + $(this).val());
      availableDirectors.push($(this).val());
    });


    $("#director").autocomplete({
      source: availableDirectors
    });

});