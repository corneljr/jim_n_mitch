$(document).ready( function(){
	$('.poll-submit').click( function(e){
		e.preventDefault();

		var selection = $('input[name=option]:checked', '.poll-form').val();

		$.ajax({
			url: '/admin/votes',
			type: 'POST',
			data: { choice: selection }
		}).done( function(response){
			$('.poll-container').html(response);
		});
	});
});