$(document).on('page:change', function() {

	$("a[data-remote]").on("ajax:success", function(e, data, status, xhr) {
	  console.log(data);

	  results = '';
	  $.map(data.Search, function(data){
		  results += "<p class:movie_datas>" + data.Title + "</p>";
      });
	  $("#results").html(results);

	  $("input[name='movie[title_vo]']").val(data.Title);
	  $("input[name='movie[year]']").val(data.Year);
	  $("input[name='movie[duration]']").val(data.Runtime);
	  $("input[name='movie[image]']").val(data.Poster);
	}).on("ajax:error", function(e, xhr, status, error) {
	  $("#results").text("<p>ERROR</p>");
	});

	$('#api_search_movie').on('input', function() {
		$('#link_search_movie').prop('href', 'http://www.omdbapi.com/?s=' + $(this).val() + '&type=movie&y=&plot=full&r=json');
		$('#link_search_movie').click();
	});

});