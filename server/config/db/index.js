"use strict";

var mysql = require("mysql2");
var fs = require("fs");
require('dotenv').config();
var myCon = mysql.createConnection({
  host: process.env.HOST_NAME || "localhost",
  port: process.env.PORT || "3306",
  //  database: process.env.DB_NAME || 'h32_blog',
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASSWORD || "anhthang123",
});

fs.readFile("h32blog.sql", "utf8", function (err, data) {
  if (err) {
    console.log(err);
    return;
  }

  var queries = data.split(";");

  queries.forEach(function (query) {
    myCon.query(query, function (err, sets, fields) {
      if (err) console.log(err);
    });
  });

  console.log("Finished");
  myCon.end();
});
