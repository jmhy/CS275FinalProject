//Using express to simplify handling of different client reqs
var express = require('express');
var app = express();

//refer to parent dir, change if moving this script to another dir
app.use(express.static('../'));

//Create an instance of a mysql connection
var mysql = require('mysql');
var con = mysql.createConnection({
	host: '127.0.0.1',
	user: 'root',
	password: 'cs275',
	database: 'finalproject'
});
con.connect(function(err){
	if(err){
		console.log('Error connecting to database');
		console.log(err);
	}
	else{
		console.log('Successfully connected to database');
	}
});

app.get('/plan',function(req,res){
	var plan_id = req.query.p;
	var q_str = 'select * from workout_plan where plan_id = ' + plan_id + ';';
	con.query(q_str, function(err,rows,fields){
		if(err){
			console.log('Error during plan query processing');
			console.log(err);
			res.send('Error during plan query processing');
		}
		else{
			//begin dynamic html with name and description of plan
			var html_str = '<h1>' + rows[0].name + '</h1>' + rows[0].desc;
			
			//go through the days in the plan and note those with workout routine
			var days = [false, false, false, false, false, false, false];
			if(rows[0].fk_workout_sun != null){
				days[0] = true;
			}
			if(rows[0].fk_workout_mon != null){
				days[1] = true;
			}
			if(rows[0].fk_workout_tue != null){
				days[2] = true;
			}
			if(rows[0].fk_workout_wed != null){
				days[3] = true;
			}
			if(rows[0].fk_workout_thu != null){
				days[4] = true;
			}
			if(rows[0].fk_workout_fri != null){
				days[5] = true;
			}
			if(rows[0].fk_workout_sat != null){
				days[6] = true;
			}
			
			//subsequently query DB for workouts on each day for the plan
			q_str = `select distinct workout_day.*, e1.name ex1, e2.name ex2, e3.name ex3, e4.name ex4, e5.name ex5, e6.name ex6, e7.name ex7, e8.name ex8, e9.name ex9, e10.name ex10
				from workout_day
				left join exercises e1 on (fk_ex1_id=e1.exercise_id)
				left join exercises e2 on (fk_ex2_id=e2.exercise_id)
				left join exercises e3 on (fk_ex3_id=e3.exercise_id)
				left join exercises e4 on (fk_ex4_id=e4.exercise_id)
				left join exercises e5 on (fk_ex5_id=e5.exercise_id)
				left join exercises e6 on (fk_ex6_id=e6.exercise_id)
				left join exercises e7 on (fk_ex7_id=e7.exercise_id)
				left join exercises e8 on (fk_ex8_id=e8.exercise_id)
				left join exercises e9 on (fk_ex9_id=e9.exercise_id)
				left join exercises e10 on (fk_ex10_id=e10.exercise_id)
				inner join workout_plan p1 on (workout_day_id=p1.fk_workout_sun or workout_day_id=p1.fk_workout_mon or workout_day_id=p1.fk_workout_tue or workout_day_id=p1.fk_workout_wed or workout_day_id=p1.fk_workout_thu or workout_day_id=p1.fk_workout_fri or workout_day_id=p1.fk_workout_sat) and p1.plan_id=` + plan_id;
			con.query(q_str, function(err,rows,fields){
				if(err){
					console.log('Error during day query processing');
					console.log(err);
					res.send('Error during day query processing');
				}
				else{
					var current_row = 0;
					//go through each day of week that has exercises
					for(i=0; i<7; i++){
						if(days[i]){
							switch(i){
								case 0:
									html_str += '<h2>Sunday</h2>';
									break;
								case 1:
									html_str += '<h2>Monday</h2>';
									break;
								case 2:
									html_str += '<h2>Tuesday</h2>';
									break;
								case 3:
									html_str += '<h2>Wednesday</h2>';
									break;
								case 4:
									html_str += '<h2>Thursday</h2>';
									break;
								case 5:
									html_str += '<h2>Friday</h2>';
									break;
								case 6:
									html_str += '<h2>Saturday</h2>';
									break;
							}
							
							//table headers
							html_str += '<table border="1"><tr><th>Exercise</th><th>Sets</th><th>Reps</th><th>Weight</th><th>Distance</th><th>Duration</th><th>Rest</th></tr>';
							
							//add row to table for each non null exercise
							for(j=1; j<=10; j++){
								if(rows[current_row]['ex'+j] != null){
									html_str += '<tr><td>'+rows[current_row]['ex'+j]+'</td><td>'+rows[current_row]['e'+j+'_sets']+'</td><td>'+rows[current_row]['e'+j+'_reps']+'</td><td>'+rows[current_row]['e'+j+'_weight']+'</td><td>'+rows[current_row]['e'+j+'_dist']+'</td><td>'+rows[current_row]['e'+j+'_dur']+'</td><td>'+rows[current_row]['e'+j+'_rest']+'</td></tr>';
								}
							}
							html_str += '</table>';
							//allow loop to access next row from query
							current_row++;
						}
					}
					
					//send formatted html back to client
					console.log(html_str);
					console.log('Sending workout plan');
					res.send(html_str);
				}
			});
		}
	});
});

//Any other URL request will redirect to the main page
app.get('*',function (req, res) {
	res.redirect('./test.html');
});

//Have the server listen to port 8080
app.listen(8080,function(){
	console.log('Server Running');
});