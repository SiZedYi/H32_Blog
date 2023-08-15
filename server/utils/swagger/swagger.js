const express = require('express');
const router = express.Router();
const swaggerUi = require('swagger-ui-express');
const swaggerJSDoc = require('swagger-jsdoc');
const path = require('path');
// Định nghĩa Swagger
const swaggerDefinition = {
    openapi: '3.0.0',
    info: {
      title: 'API Documentation',
      version: '1.0.0',
      description: 'Documentation for H32_Blog',
    },
    servers: [
      {
        url: 'http://localhost:3000/', // Điều chỉnh URL tương ứng của ứng dụng của bạn
      },
    ],
  };

const options = {
    swaggerDefinition,
    apis: [
      path.join(__dirname, 'schema/*.js'), // Sử dụng path.join để tạo đường dẫn tương đối
      path.join(__dirname, 'summary/*.js'),
      path.join(__dirname, '../../routes/*.js'), // Đường dẫn tới các tệp chứa tuyến đường trong thư mục routes
    ],
};
// console.log(require(options.apis[0]));
const swaggerSpec = swaggerJSDoc(options);

  // Định tuyến để hiển thị tài liệu Swagger
router.use('/', swaggerUi.serve, swaggerUi.setup(swaggerSpec,
   {
    explorer: true,
    // customCssUrl:
    //   "https://cdn.jsdelivr.net/npm/swagger-ui-themes@3.0.0/themes/3.x/theme-newspaper.css",
   }));

module.exports = router;