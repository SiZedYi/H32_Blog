const express = require('express');
const morgan = require('morgan');
const ejsLayouts = require('express-ejs-layouts');
const path = require('path');

const router = require('./routes');

const app = express();
const port = process.env.PORT || 3000;


app.use(express.static(path.join(__dirname, '../client/dist')));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// HTTP logger
app.use(morgan('combined'));

// Render index.html
app.get('/', (req, res) => {
	res.sendFile(path.join(__dirname, '../client/dist/index.html'));
  });

app.use(router);

app.listen(port, () =>
	console.log('> Server is up and running on port : http://localhost:' + port)
);
