//get and display Table Display prompts on main page
function displayPlan(){
	var plan_id = $('#input').get(0).value;
	//Create URL to tables page
	var URL = 'http://localhost:8080/plan';	
	
	//Construct AJAX request to localhost
	$.ajax({
		type: 'GET',
		url: URL,
		data: {p:plan_id},
		dataType: 'html',
		success: function(msg){
			$('#out').html(msg);
		},
		error: function(xhr, ajaxOptions, thrownError){
			alert('Error contacting server!');
		}
	});
}