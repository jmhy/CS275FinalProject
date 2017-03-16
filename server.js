var express = require('express');
var app = express();
var mysql = require('mysql');
var queries = require('./queries.js');
var bodyParser = require('body-parser');

app.use(bodyParser.json()); // for parsing application/json
app.use(bodyParser.urlencoded({ extended: true })); 



app.listen(8000);