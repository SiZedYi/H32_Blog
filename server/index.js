const express = require("express");
const morgan = require("morgan");
const bodyParser = require("body-parser");
const router = require("./routes");
const app = express();
const cors = require('cors');
const port = process.env.PORT || 3000;
const corsOptions = {
  origin: 'http://103.176.146.142:3000',
  optionsSuccessStatus: 200, // Mã trạng thái thành công
};

app.use(cors(corsOptions)); // Sử dụng cors middleware ở đầu ứng dụng

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// HTTP logger
app.use(morgan("combined"));

app.use(router);

app.listen(port, () =>
  console.log("> Server is up and running on port : http://localhost:" + port),
);
