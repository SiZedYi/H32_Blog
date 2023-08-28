// pagination.js

const Sequelize = require('sequelize');

function paginate(data, page, itemsPerPage) {
  const offset = (page - 1) * itemsPerPage;

  const items = data.slice(offset, offset + itemsPerPage);
  const totalPages = Math.ceil(data.length / itemsPerPage);

  return {
    items,
    totalPages,
    currentPage: page,
  };
}

module.exports = {
  paginate,
};