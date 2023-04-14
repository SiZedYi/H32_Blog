const express = require('express');
const morgan = require('morgan');
const ejsLayouts = require('express-ejs-layouts');
const path = require('path');

const router = require('./routes');

const app = express();
const port = process.env.PORT || 3000;

app.use(express.static(path.join(__dirname, 'public')));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// HTTP logger
app.use(morgan('combined'));

// template engine
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
// app.use(ejsLayouts);

app.use(router);

app.listen(port, () =>
	console.log('> Server is up and running on port : ' + port)
);
