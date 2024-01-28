// Load the modules
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
const dev_dbConfig = {
	host: 'db',
	port: 5432,
	database: 'tekpossible_geode',
	user: 'postgres',
	password: 'pwd'
};
const isProduction = process.env.NODE_ENV === 'production';
dbConfig = isProduction ? process.env.DATABASE_URL : dev_dbConfig;
if (isProduction) {
  pgp.pg.defaults.ssl = {rejectUnauthorized: false};
}
console.log(dbConfig);
var db = pgp(dbConfig);


// Home page - DON'T CHANGE
app.get('/', function(req, res) {
  var select_statement = "select * from villow_pillow;"
  db.task('get-everything', task => {
    return task.batch([
             task.any(select_statement),
         ]);
     })
     .then(info => {
       res.render('pages/main',{
         my_title: "INTERPIL - Search",
         items: info[0],
         error: false,
         message: ''
        })
      })
      .catch(err => {
              console.log('error', err);
              res.render('pages/report', {
                  my_title: "INTERPIL - ERROR",
                  items: '',
                  error: true,
                  message: err
              })
      });
});

app.post('/search', function(req, res){
  var select_statement = "select * from villow_pillow where pillow_desc LIKE '%" + req.body.search + "%';"
  
  db.task('get-everything', task => {
    return task.batch([
             task.any(select_statement),
         ]);
     })
     .then(info => {
       res.render('pages/main',{
         my_title: "INTERPIL - Results",
         items: info[0],
         error: false,
         message: ''
        })
      })
      .catch(err => {
              console.log('error', err);
              res.render('pages/report', {
                  my_title: "INTERPIL - ERROR",
                  items: '',
                  error: true,
                  message: err
              })
      });
});

//to request data from API for given search criteria
//TODO: You need to edit the code for this route to search for movie reviews and return them to the front-end

app.post('/add_drink', function(req, res) {
  var insert_statement = "insert into drink_history(name, url, img, drink_id, drink_desc) values('" + req.body.name + "','" + req.body.url + "','" + req.body.img +  "','" + req.body.drink_id +  "','" + req.body.desc + "');"
  db.task('get-everything', task => {
   return task.batch([
            task.any(insert_statement),
        ]);
    })
    .then(info => {
    	res.render('pages/main',{
				my_title: "Cocktail Search",
				items: '',
        error: false,
        message: '' // Return the color choices
// Return the color message of the color added to the table
			})
    })
    .catch(err => {
      console.log('error', err);
      res.render('pages/main', {
          my_title: "INTERPIL - ERROR",
          items: '',
          error: true,
          message: err
      })
    });
});
app.get('/report', function(req, res) { // TODO: Figure out file uploads 
  res.render('pages/report',{
    my_title: "INTERPIL - REPORT",
    items: '',
    error: false,
    message: ''
  })
  .catch(err => {
    console.log('error', err);
    res.render('pages/report', {
        my_title: "INTERPIL - ERROR",
        items: '',
        error: true,
        message: err
    })
  });
});
app.post('/report', function(req,res) { // TODO: figure out out file uploads
  insert_statement = "insert into villow_pillow(name,url,varchar,pillow_id,pillow_desc,pillow_color,pillow_location) values('" // TODO: Add the insert statement here
});

const PORT = process.env.PORT || 8080;

const server = app.listen(PORT, () => {
	console.log(`Express running → PORT ${server.address().port}`);
});