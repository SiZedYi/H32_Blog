'use strict'

var mysql = require('mysql');
var fs = require('fs')
var readline = require('readline')

var myCon = mysql.createConnection({
   host: process.env.HOST_NAME || 'localhost',
   port: process.env.PORT || '3306',
   database: process.env.DB_NAME || 'h32_blog',
   user: process.env.DB_USER || 'root',
   password: process.env.DB_PASSWORD || 'anhthang123'
})

var rl = readline.createInterface({
  input: fs.createReadStream('h32blog.sql'),
  terminal: false
 })

rl.on('line', function(chunk){
    myCon.query(chunk.toString('ascii'), function(err, sets, fields){
     if(err) console.log(err);
    })
})

rl.on('close', function(){
  console.log("finished")
  myCon.end()
})