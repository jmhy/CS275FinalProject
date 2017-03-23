var fs=require('fs');
var EventEmitter = require('events').EventEmitter; 
var utils = require('util');
var http = require('http');
var mysql = require('mysql');

var con = mysql.createConnection({
	host: 'localhost',
	user: 'root', 
	password: 'testsql', 
	database: 'finalproject'
});

function queries(){
	EventEmitter.call(this);
}

utils.inherits(queries,EventEmitter);
queries.prototype.get_mucsles_per_category =function(body){
	var self = this;
	//console.log('insert into student values ("'+body.std_id+'", "'+body.first+'","'+body.last+'","'+body.bday+'","'+body.major+'")')
	con.query('select fk_muscle1_id, m1.name mn1, m1.img_filepath mi1, fk_muscle2_id, m2.name mn2, m2.img_filepath mi2, fk_muscle3_id, m3.name mn3, m3.img_filepath mi3, fk_muscle4_id, m4.name mn4, m4.img_filepath mi4 from muscle_categories inner join muscles m1 on (fk_muscle1_id=m1.m_id) and muscle_categories.name=\''+body+'\' inner join muscles m2 on (fk_muscle2_id=m2.m_id) and muscle_categories.name=\''+body+'\' inner join muscles m3 on (fk_muscle3_id=m3.m_id) and muscle_categories.name=\''+body+'\' inner join muscles m4 on (fk_muscle4_id=m4.m_id) and muscle_categories.name=\''+body+'\'',
		function(err,rows,fields) {
		if (err)
			console.log(err);
			//console.log('Error during query processing');
		else
		   console.log('Here is the result : ', rows);
		self.emit('muscles',rows);
	});
}

queries.prototype.get_all_exercises_for_muscle =function (body){
	var self = this;
	//console.log('insert into student values ("'+body.std_id+'", "'+body.first+'","'+body.last+'","'+body.bday+'","'+body.major+'")')
	con.query('select exercise_id, name from exercises where fk_muscle1_id =\''+body+'\' or fk_muscle2_id =\''+body+'\' or fk_muscle3_id =\''+body+'\' or fk_muscle4_id =\''+body+'\' or fk_muscle5_id =\''+body+'\'',
		function(err,rows,fields) {
		if (err)
			console.log(err);
			//console.log('Error during query processing');
		else
		   console.log('Here is the result : ', rows);
		self.emit('exercises',rows);
	});
}

queries.prototype.get_exercise_details =function (body){
	var self = this;
	//console.log('insert into student values ("'+body.std_id+'", "'+body.first+'","'+body.last+'","'+body.bday+'","'+body.major+'")')
	con.query('select name, instructions, video_url from exercises',// where exercise_id=\''+body+'\'',
		function(err,rows,fields) {
		if (err)
			console.log(err);
			//console.log('Error during query processing');
		else
		   console.log('Here is the result : ', rows);
		self.emit('workout',rows);
	});
}

module.exports = queries;