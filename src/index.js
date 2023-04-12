const express = require('express');
const morgan = require('morgan');
const handlebars = require('express-handlebars');
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
app.engine(
	'.hbs',
	handlebars.engine({
		extname: '.hbs',
	})
);
app.set('view engine', '.hbs');
app.set('views', path.join(__dirname, 'resources', 'views'));

app.use(router);

app.listen(port, () =>
	console.log('> Server is up and running on port : ' + port)
);
