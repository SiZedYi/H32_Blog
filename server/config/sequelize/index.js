const Sequelize = require("sequelize");
require('dotenv').config();
const sequelize = new Sequelize(
  process.env.DB_NAME, process.env.DB_USER, process.env.DB_PASSWORD,
  {
  host: process.env.HOST_NAME ,
  dialect: "mysql",
});

// Test kết nối
sequelize
  .authenticate()
  .then(() => {
    console.log("Kết nối cơ sở dữ liệu thành công.");
    console.log(process.env.DB_NAME);
  })
  .catch((err) => {
    console.error("Không thể kết nối đến cơ sở dữ liệu:", err);
  });

module.exports = sequelize;
