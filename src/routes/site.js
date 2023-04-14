const { renderHomePage } = require('../controllers/SiteController');

const router = require('express').Router();

router.use('/', renderHomePage);

module.exports = router;
