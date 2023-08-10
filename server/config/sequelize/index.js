const Sequelize = require("sequelize");

const sequelize = new Sequelize("h32_blog", "root", "160503", {
  host: process.env.HOST_NAME || "localhost",
  dialect: "mysql",
});

// Test kết nối
sequelize
  .authenticate()
  .then(() => {
    console.log("Kết nối cơ sở dữ liệu thành công.");
  })
  .catch((err) => {
    console.error("Không thể kết nối đến cơ sở dữ liệu:", err);
  });

module.exports = sequelize;
