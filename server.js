var express = require('express');
var app = express();
var mysql = require('mysql');
var bodyParser = require('body-parser');
var path = require('path');
var queries = require('./queries.js');

app.use(express.static(__dirname));
app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); 

app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/index.html'));
});

var queries = new queries();

app.get('/:body_part/', function (req, res) {
  queries.once("muscles", function(rows){
		res.json(rows);
	})
	queries.get_mucsles_per_category(String(req.params.body_part));
})

app.get('/:body_part/:muscle_id/', function (req, res) {
	  queries.once("exercises", function(rows){
		res.json(rows);
	})
	queries.get_all_exercises_for_muscle(String(req.params.muscle_id));
})

app.get('/:body_part/:muscle_id/:exercise_id', function (req, res) {
  	  queries.once("workout", function(rows){
		res.json(rows);
	})
	queries.get_exercise_details(String(req.params.exercise_id));

})

app.listen(8000);