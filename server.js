// Load dem modules
var express = require('express'); //Express - a web application framework that provides useful utility functions like 'http'
var app = express();
var bodyParser = require('body-parser'); // Body-parser -- a library that provides functions for parsing incoming requests
app.use(bodyParser.json());              // Support json encoded bodies
app.use(bodyParser.urlencoded({ extended: true })); // Support encoded bodies
const axios = require('axios');
const qs = require('query-string');
var pgp = require('pg-promise')(); // postgres-promise package

// Set the view engine to ejs
app.set('view engine', 'ejs');
app.use(express.static(__dirname + '/'));// Set the relative path; makes accessing the resource directory easier
const dbConfig = {
	host: 'localhost',
	port: 5432,
	database: 'tekpossible_resume',
	user: 'postgres', // TODO: Figure out what we want here...
	password: process.env.DATABASE_PASSWORD
};

var db = pgp(dbConfig);


app.get('/', function(req, res) {
  res.render('pages/main',{
    my_title: "Griffin Kiesecker - DevOps Engineer",
    items: [],
    error: false,
    message: ''
   });
});

app.get('/experience', function(req, res) {
  const select_statement = "select * from experience;";
  db.task('get-everything', task => {
    return task.batch([
             task.any(select_statement),
         ]);
     })
     .then(info => {
      res.render('pages/experience',{
        my_title: "Griffin Kiesecker - Experience and Education",
        items: info,
        error: false,
        message: ''
      })
     })     
      .catch(err => {
      console.log('error', err);
      res.render('pages/experience', {
          my_title: "Griffin Kiesecker - Critical Error",
          items: '',
          error: true,
          message: err
      })
    });
});

app.get('/projects', function(req, res) {
  const select_statement = "select * from projects;";
  db.task('get-everything', task => {
    return task.batch([
             task.any(select_statement),
         ]);
     })
     .then(info => {
      res.render('pages/projects',{
        my_title: "Griffin Kiesecker - Certifications and Projects",
        items: info,
        error: false,
        message: ''
      })
     })     
      .catch(err => {
      console.log('error', err);
      res.render('pages/projects', {
          my_title: "Griffin Kiesecker - Critical Error",
          items: '',
          error: true,
          message: err
      })
    });
});


const PORT = 8080; // We will always listen on port 8080. That way, I do not need to template my httpd configuration.

const server = app.listen(PORT, () => {
	console.log(`Express running → PORT ${server.address().port}`);
});