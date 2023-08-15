const express = require("express");
const morgan = require("morgan");
const bodyParser = require("body-parser");
const router = require("./routes");
const app = express();
const port = process.env.PORT || 3000;

app.use(cors()); // Sử dụng cors middleware ở đầu ứng dụng

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// HTTP logger
app.use(morgan("combined"));

app.use(router);

app.listen(port, () =>
  console.log("> Server is up and running on port : http://localhost:" + port),
);
